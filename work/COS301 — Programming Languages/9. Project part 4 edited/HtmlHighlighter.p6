#!/usr/bin/env perl6

use v6.c;
use Test;
use DOM::Tiny;

sub highlightHtml(Str $html, Str $keyword --> Str) {
    my DOM::Tiny $dom = DOM::Tiny.parse($html);
    for $dom.tree.descendant-nodes {
        if .WHAT === (Text) {
            my Str $html = "<br>";
            my Bool $xml = False;
            my $tree = DOM::Tiny::HTML::_parse($html, :$xml).tree;
            .tree.content(
                _link(
                    .tree, $tree.tree.children
                )
            )
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
