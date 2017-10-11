#!/usr/bin/env perl6

use v6.c;
use Test;

sub lex(Str $code) {
    my Str $state="start";
    my Array @finishedTokens;
    my Str $token;
    my Str $prevChar;
    for $code.split("", :skip-empty) -> $char {
        $_ = $char;
        if $token ∈ <tru fals> {
            when "e" {
                $state = "";
                $token ~= $_;
                @finishedTokens + $token
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
        }
    }
}

# Test suite
(
    ok lex('String qux?');

    say "Done running tests. Report:";
    done-testing;
);
