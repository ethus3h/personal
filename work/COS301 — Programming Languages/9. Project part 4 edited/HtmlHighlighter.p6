#!/usr/bin/env perl6

use v6.c;
use Test;
use DOM::Tiny;

sub highlightHtml(Str $html, Str $keyword --> Str) {
    my DOM::Tiny $dom = DOM::Tiny.parse($html);
    for $dom.tree.descendant-nodes {
        #my $blah = S:g🍄($keyword)🍄<span style="background-color: blue; color: white"> $0 </span>🍄
        #'blah'
        #S:g🍄($keyword)🍄<span style="background-color: blue; color: white"> $0 </span>🍄
        #with .content

        say S:g/a/b/ with "blah";
        #with .content
        .content( S:g/a/b/ with "blah" )
    };
    return $dom.render()
}

ok highlightHtml("foo", "o");

ok highlightHtml(q:to/♥/, 'blue');
<span style="background-color: blue; color: white">blue<blue></blue</span>
♥

say "Test results:";
done-testing;
