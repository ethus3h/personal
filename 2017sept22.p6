class St { method qux() { say "OK"; }; }; grammar EM { token TOP { :my $*ST = St.new(); }; method block { $*ST.enter(); }; token foo { <block> '!' }; }; say EM.parse('!', :rule<foo>);
