#!/usr/bin/env perl6

use v6.c;
use Test;
use DOM::Tiny;

sub highlightHtml(Str $html, Str $keyword --> Str) {
    my DOM::Tiny $dom = DOM::Tiny.parse($html);
    for $dom.tree.descendant-nodes {
        .WHAT === (Text) and .content('<span style="background-color: blue; color: white">' ~ .content ~ '</span>')
    };
    return $dom.render()
}

    ok highlightHtml("foo", "o");
    
    ok highlightHtml(q:to/♥/, 'blue');
    <span style="background-color: blue; color: white">blue<blue></blue</span>
    ♥

    say "Test results:";
    done-testing;
);
 
