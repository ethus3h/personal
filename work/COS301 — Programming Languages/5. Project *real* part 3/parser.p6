#!/usr/bin/env perl6

use v6.c;
use Test;

sub lex(Str $code --> List) {
    my Pair @finishedTokens;
    my Str $token;
    my Str $prevChar = "None";
    for $code.split("", :skip-empty) -> $char {
        $_ := $char;
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
                $token = "";
            }
            # Found a token
            $token ~= $char;
            @finishedTokens.push($type => "$token");
            $prevChar = $char;
            $token = "";
            next
        }
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
    }
    when $token ne '' {
        @finishedTokens.push('literal' => $token);
    }
    return @finishedTokens
}

sub parse(Pair @tokens --> Nil) {
    
}

# Test suite
(
    # Test lexer
    nok lex('String qux?');
    isa-ok lex('Stringqux'), List;
    isa-ok lex('foo & !( a2 > bar & w < foo | x < y)'), List;
    say lex('foo & !( a2 > bar & w < foo | x < y)');

    # Test parser
    lex('foo & !( a2 > bar & w < foo | x < y)')
      ==> parse;

    say "Done running tests. Report:";
    done-testing;
);
