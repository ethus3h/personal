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

sub parse(Pair @tokens --> Nil) {
    my Str @state;
    my Str @parse;
    my Pair $token = "" => "";

    sub lexeme(Pair $token --> Str) {
        $_ := $token;
        when "" => "" {
            # do nothing, we don't have any token yet
        }
        default {
            say "Next token is the " ~ .key ~ " " ~ .value
        }
    }

    sub enter(Str $rule --> Nil) {
        say "Enter <$rule>";
        @state.push("$rule");
        say @state;
    }

    sub bool_factor( --> Nil) {
        enter "bool_factor";
        # if ! bool_literal {
        #     
        # }
        say $token.WHAT;

        while lexeme($token) eq "&" {
            bool_factor
        }
    }

    sub and_term( --> Nil) {
        enter "and_term";
        bool_factor;
        while lexeme($token) eq "&" {
            bool_factor
        }
    }

    sub bool_expr( --> Nil) {
        enter "bool_expr";
        and_term;
        while lexeme($token) eq "|" {
            and_term
        }
    }

    bool_expr
}

# Test suite
(
    # Test lexer
    nok lex('String qux?');
    isa-ok lex('Stringqux'), List;
    isa-ok lex('foo & !( a2 > bar & w < foo | x < y)'), List;

    # Test parser
    lex('foo & !( a2 > bar & w < foo | x < y)')
        ==> parse;
    

    say "Done running tests. Report:";
    done-testing;
);
