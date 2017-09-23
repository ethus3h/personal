#!/usr/bin/env perl6

class St {
    method qux() { say "OK"; };
};

grammar EM {
    has St $.ST;
    token TOP {
        <block>
    };
    method block {
        $*ST.enter();
    };
    token foo {
        <block> '!'
    };
};
say EM.parse('!', :rule<foo>);
