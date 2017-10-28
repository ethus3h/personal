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

    @finishedTokens.push('EOF' => "");

    return @finishedTokens
}

sub parse(List $tokens --> Nil) {
    my Pair @state;
    my Pair @consumed;
    my Pair @input = $tokens.clone;
    my Pair $token = "" => "";
    my Str $lexeme = "";
    my Str $currentRule = "";
    my Int $levelsCount = 0;

    # Support subroutines for the parser
    (
        sub lexeme( --> Pair) {
            $_ = shift(@input);
            #say $_;
            $lexeme = ~ $_;
            unshift(@consumed, $_);
            when "" => "" {
                # do nothing, we don't have any token yet
            }
            default {
                say "Next token is the " ~ .key ~ " " ~ .value;
                #say "    State: \n" ~ @state;
                #say "    Consumed: \n" ~ @consumed;
                return $_
            }
        }

        sub enter(Str $rule --> Nil) {
            say "Enter <$rule>";
            $currentRule = $rule;
            $levelsCount = $levelsCount + 1;
            @state.push("    " x $levelsCount ~ "<$rule>: " => "Lexeme: \{ $lexeme \}\n");
        }

        sub accept( --> Nil) {
            say "Exit <$currentRule>";
            $levelsCount = $levelsCount - 1;
        }

        sub give_back( --> Nil) {
            @state.pop();
            say "DEBUG: Did not match <$currentRule> (depth: $levelsCount)";
            $levelsCount = $levelsCount - 1;
            for @consumed {
                unshift(@input, (shift(@consumed)))
            }
            @consumed = < >;
        }
    );

    # Rules for the parser
    (
        sub bool_literal( --> Nil) {
            enter "bool_literal";
            my Str $test where * eq "bool_literal";
            $test = lexeme().key;
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
            accept
        }

        sub relop( --> Nil) {
            enter "relop";
            my Str $test where * ∈ < \< \> >;
            $test = lexeme().value;
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
            accept
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
            accept
        }

        sub relation_expr( --> Nil) {
            enter "relation_expr";
            id;
            {
                if relop() {
                    id
                }
                CATCH {
                    default {
                        say "(Matched ID-only relation_expr)"
                    }
                }
            }
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
            accept
        }

        sub eof( --> Nil) {
            lexeme().key eq "EOF";
            CATCH {
                default {
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
        }

        sub bool_factor( --> Nil) {
            enter "bool_factor";
            {
                bool_literal();
                CATCH {
                    default {
                        my Str $lexeme = lexeme().value;
                        my $extest where * eq '!';
                        $extest = $lexeme;
                        bool_factor;
                        CATCH {
                            default {
                                my $lptest where * eq '(';
                                $lptest = lexeme;
                                $lexeme eq "(";
                                bool_expr;
                                my $rptest where * eq ')';
                                $rptest = lexeme;
                                CATCH {
                                    default {
                                        relation_expr;
                                        CATCH {
                                            default {
                                                give_back;
                                                X::AdHoc.new(:payload<Did not match>).throw
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
            accept
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
            accept
        }

        sub bool_expr( --> Nil) {
            enter "bool_expr";
            and_term;
            while lexeme().value eq "|" {
                and_term
            }
            eof;
            CATCH {
                default {
                    give_back;
                    X::AdHoc.new(:payload<Did not match>).throw
                }
            }
            accept
        }
    );

    # Enter the parser from the top of the tree
    bool_expr;
    if @input.elems > 0 {
        say "The input string does not match the grammar. Current parse state: ";
        say @state;
        fail "The input string does not match the grammar. Unused input: " ~ @input
    }
    say @state;
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
    say parse(lex('foo & !( a2 > bar & w < foo | x < y)'));

    say "Done running tests. Report:";
    done-testing;
);
