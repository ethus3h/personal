#!/usr/bin/env perl6

use v6.c;
use Test;

sub lex(Str $code --> List) {
    my Pair @finishedTokens;
    my Str $token;
    my Str $prevChar = "None";

    for $code.split("", :skip-empty) -> $char {
        $_ := $char;

        # Subroutines for when something interesting is found
        (
            sub continue( --> Nil) {
                # Accepted an identifier-part
                $token ~= $char;
                $prevChar = $char;
                next
            }

            sub push(Str $type --> Nil) {
                $_ := $type;
                if $prevChar ~~ /<:L + :N>/ {
                    # Found something non-identifier after an identifier,
                    #   so push the identifier
                    @finishedTokens.push("identifier" => "$token");
                    $token = ""
                }
                # Found a token
                $token ~= $char;
                @finishedTokens.push($type => "$token");
                $prevChar = $char;
                $token = "";
                next
            }
        );

        # Rules for figuring out what the lexer is looking at
        (
            if $token ∈ <tru fals> {
                when "e" {
                    push 'bool_literal'
                }
            }
            when /<:L + :N>/ {
                when /<:N>/ && $prevChar !~~ /<:L>/ {
                    fail "Expected an identifier or an operator."
                }
                default {
                    continue
                }
            }
            if $_ ∈ < ( ) > {
                push 'parenthesis'
            }
            when '!' {
                push 'unary_oper'
            }
            when $_ ∈ < & | \< \> > {
                push 'binary_oper'
            }
            when /\s/ {
                # Skip this space
                next
            }
            default {
                fail 'Input character is not in the language: "' ~ $char ~ '"'
            }
        );
    }

    # If there aren't any more characters to consume
    # but there is still a token, it's an identifier
    if $token ne '' {
        @finishedTokens.push('identifier' => $token)
    }

    return @finishedTokens
}

sub parse(List $tokens --> Nil) {
    my Str @state;
    my Pair @consumed;
    my Pair @input = $tokens.clone;
    my Pair $token = "" => "";

    # Support subroutines for the parser
    (
        sub lexeme( --> Pair) {
            $_ = shift(@input);
            unshift(@consumed, $_);
            when "" => "" {
                # do nothing, we don't have any token yet
            }
            default {
                say "Next token is the " ~ .key ~ " " ~ .value;
                return $_
            }
        }

        sub enter(Str $rule --> Nil) {
            say "Enter <$rule>";
            @state.push("$rule");
            say @state;
        }

        sub give_back( --> Nil) {
            say "Releasing tokens ";
            for @consumed {
                unshift(@input, (shift(@consumed)))
            }
            @consumed = < >
        }
    );

    # Rules for the parser
    (
        sub bool_literal( --> Nil) {
            enter "bool_literal";
            my Str $value where * ∈ < \< \> >;
            $value = lexeme().value;
            say $value;
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }

        sub relop( --> Nil) {
            enter "relop";
            lexeme().value eq "identifier";
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }

        sub id( --> Nil) {
            enter "id";
            lexeme().key eq "identifier";
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }

        sub relation_expr( --> Nil) {
            enter "relation_expr";
            id;
            while relop() {
                id
            }
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }

        sub bool_factor( --> Nil) {
            enter "bool_factor";
            my Str $lexeme = lexeme().value;
            if ! bool_literal() {
                if ! { $lexeme eq "!"; bool_factor } {
                    if ! { $lexeme eq "("; bool_expr; $lexeme eq "("; } {
                        relation_expr
                    }
                }
            }
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }

        sub and_term( --> Nil) {
            enter "and_term";
            bool_factor;
            while lexeme().value eq "&" {
                bool_factor
            }
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }

        sub bool_expr( --> Nil) {
            enter "bool_expr";
            and_term;
            while lexeme().value eq "|" {
                and_term
            }
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }
    );

    # Enter the parser from the top of the tree
    bool_expr
}

# Test suite
(
    # Test lexer
    nok lex('String qux?');
    isa-ok lex('Stringqux'), List;
    isa-ok lex('foo & !( a2 > bar & w < foo | x < y)'), List;

    # Test parser
    #lex('foo & !( a2 > bar & w < foo | x < y)')
    #    ==> parse;
    say parse(lex('foo & !( a2 > bar & w < foo | x < y)')).WHAT;

    say "Done running tests. Report:";
    done-testing;
);
