#!/usr/bin/env perl6

use v6.c;
use Test;
use DOM::Tiny;

sub highlightHtml(Str $html, Str $keyword --> Str) {
    my DOM::Tiny $dom = DOM::Tiny.parse($html);
    say $dom;
    say $dom.render();
    return "Blah";
}

# Test suite
(
    # Test lexer
    say "Running tests";

    ok highlightHtml("foo", "o");
    
    ok runParserTest(q:to/♥/;
    <span style="background-color: blue; color: white">keyword</span>
♥, 'TOP');

    say "Done running tests. Report:";
    done-testing;
);
