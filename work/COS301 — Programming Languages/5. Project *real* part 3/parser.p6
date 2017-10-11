#!/usr/bin/env perl6

use v6.c;
use Test;

sub lex(Str $code --> Bool) {
    my Str $state="start";
    my List $finishedTokens;
    my Str $token;
    my Str $prevChar;
    for $code.split("", :skip-empty) -> $char {
        $_ = $char;
        sub push(Str $type --> Nil) {
            $state = "";
            $token ~= $_;
            $finishedTokens := $type => $token;
            next
        }
        if $token ∈ <tru fals> {
            when "e" {
                push 'bool_literal'
            }
        }
        when /<:L>/ {
            if $token ∈ <t tr tru f fa fal fals> {
                $token ~= $_;
            }
        }
        $prevChar = $char;
        default {
            say "Unknown input character " ~ $char;
            return False
        }
    }
    return True
}

# Test suite
(
    nok lex('String qux?');
    ok lex('Stringqux');

    say "Done running tests. Report:";
    done-testing;
);
