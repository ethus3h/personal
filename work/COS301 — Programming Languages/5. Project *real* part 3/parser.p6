#!/usr/bin/env perl6

use v6.c;
use Test;

sub lex(Str $code --> List) {
    my Str $state="start";
    my Pair @finishedTokens;
    my Str $token;
    my Str $prevChar = "None";
    for $code.split("", :skip-empty) -> $char {
        $_ := $char;
        sub continue( --> Nil) {
            $token ~= $char;
            $prevChar = $char;
            next
        }
        sub push(Str $type --> Nil) {
            $_ := $type;
            when binary_oper {
                unless $prevChar eq "None" {
                    @finishedTokens.push($type => "$token");
                }
            }
            $state = "";
            $prevChar = "None";
            $token ~= $char;
            @finishedTokens.push($type => "$token");
            $token = "";
            next
        }
        if $token ∈ <tru fals> {
            when "e" {
                push 'bool_literal'
            }
        }
        when /<:L + :N>/ {
            if $prevChar ~~ /<:L>/ {
                continue
            }
            when /<:N>/ && $prevChar eq "None" {
                say "";
                return False
            }
        }
        if $_ ∈ < ( ) > {
            push 'parenthesis'
        }
        when '!' {
            push 'unary_oper'
        }
        if "$_" ∈ < & | \< \> > {
            push 'binary_oper'
        }
        when /\s/ {
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
    say lex('foo & !( a2 > bar & w < foo | x < y)');

    say "Done running tests. Report:";
    done-testing;
);
