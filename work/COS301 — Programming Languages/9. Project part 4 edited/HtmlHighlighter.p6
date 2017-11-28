#!/usr/bin/env perl6

use v6.c;
use Test;
use DOM::Tiny;

sub highlightHtml(Str $html, Str $keyword --> Str) {
    my DOM::Tiny $dom = DOM::Tiny.parse($html);
    for $dom.tree.descendant-nodes {
        if .WHAT === (Text) {
            .content((
                DOM::Tiny.parse("<br>")
            ))
            # .content((
            #     DOM::Tiny.parse((
            #         S:g🍄($keyword)🍄<span style="background-color: blue; color: white"> $0 </span>🍄
            #             with .content
            #     )).content
            # ))
        }
    };
    return $dom.render()
}

say highlightHtml("foo", "o");

say highlightHtml(q:to/♥/, 'blue');
<span style="background-color: blue; color: white">blue<blue></blue</span>
♥

say "Test results:";
done-testing;
