#!/usr/bin/env perl6

use v6.c;
use Test;

sub lex(Str $code) {
    say
        $code
            ==> split("", :skip-empty)
            ==> .WHAT;
    say "bcueti";
}

# Test suite
(
    ok lex('String qux?');

    say "Done running tests. Report:";
    done-testing;
);

# Testing support code: lexer
(
    sub run-silenced (&code) {
        # run-silenced not by me
        temp $*OUT = temp $*ERR = class {
            BEGIN {
                ::?CLASS.^add_method: $_, my method (*@) {} for qw/say put print print-nl/
            }
        }.new;
        code;
    }

    sub runParserTest(Str $code, Bool $fail = False) {
        try {
            CATCH {
                default {
                    if $fail {
                        say "Parsing threw an exception as expected."
                    }
                    else {
                        say lex($code);
                    }
                }
            }
            if $fail {
                if runParserTestInner($code, $fail) {
                    say "Test failed.";
                    say lex($code);
                    return True;
                }
                return False;
            }
            else {
                try {
                    if ! runParserTestInner($code, $fail) {
                        say "Test failed.";
                        say lex($code);
                        return False;
                    }
                    return True;
                }
            }
        }
    }

    sub runParserTestInner(Str $code, Bool $fail = False) {
        try {
            CATCH {
                default {
                    if $fail {
                        say "Parsing threw an exception as expected."
                    }
                    else {
                    }
                }
            }
            if $fail {
                if run-silenced { lex($code) } {
                    say "Parsing unexpectedly succeeded.";
                    # Return success status because this is being called by the test runner, which if $fail is True should be set to expect this to fail.
                    return True;
                }
                else {
                    fail "Parsing failed as expected.";
                }
            }
            else {
                if ! run-silenced { lex($code) } {
                    fail "Parsing unexpectedly failed.";
                }
                else {
                    return True;
                }
            }
        }
    }
);
