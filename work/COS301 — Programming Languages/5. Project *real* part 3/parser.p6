#!/usr/bin/env perl6

use v6.c;
use Test;

my $a = 'b';
$_ := $a;
sub foo() {
    say $a =:= $_
}
foo;

sub lex(Str $code --> Bool) {
    my Str $state="start";
    my List $finishedTokens;
    my Str $token;
    my Str $prevChar = "None";
    for $code.split("", :skip-empty) -> $char {
        $_ := $char;
        say $_;
        sub continue( --> Nil) {
            say $_.WHAT;
            say $char.WHAT;
#            $token ~= $_;
            $prevChar = $char;
            next
        }
        sub push(Str $type --> Nil) {
            $state = "";
            $prevChar = "None";
            $token ~= $_;
            $finishedTokens := $type => $token;
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
        when < ( ) > {
            push 'parenthesis'
        }
        when '!' {
            push 'unary_oper'
        }
        when < & > {
            push 'binary_oper'
        }
        default {
            say 'Input character is not in the language: "' ~ $char ~ '"';
            return False
        }
    }
    return True
}
# Test suite
(
    #nok lex('String qux?');
    #ok lex('Stringqux');

    say "Done running tests. Report:";
    done-testing;
);
