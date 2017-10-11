#!/usr/bin/env perl6

use v6.c;
use Test;

sub lex(Str $code --> List) {
    my Pair @finishedTokens;
    my Str $token;
    my Str $prevChar = "None";
    for $code.split("", :skip-empty) -> $char {
        $_ := $char;
        say "Entering tests";
        say $prevChar;
        say $char;
        sub continue( --> Nil) {
            say "Accepted an identifier-part $char";
            $token ~= $char;
            $prevChar = $char;
            next
        }
        sub push(Str $type --> Nil) {
            $_ := $type;
            say "Type: $type. Prevchar: $prevChar";
            if $prevChar ~~ /<:L + :N>/ {
                say "Found a $type after an identifier $token";
                @finishedTokens.push("identifier" => "$token");
                $token = "";
            }
            say "Found a $type $token$char";
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
                say "Expected an identifier or an operator.";
                fail
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
            say "Skipping a space";
            next
        }
        default {
            say 'Input character is not in the language: "' ~ $char ~ '"';
            fail
        }
    }
    when $token ne '' {
        @finishedTokens.push('literal' => $token);
    }
    return @finishedTokens
}
# Test suite
(
    nok lex('String qux?');
    isa-ok lex('Stringqux'), List;
    isa-k lex('foo & !( a2 > bar & w < foo | x < y)'), List;

    say "Done running tests. Report:";
    done-testing;
);
