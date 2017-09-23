EM { token TOP { :my $*ST = St.new(); }; method block { $*ST.enter(); }; token foo { <block> '!' }; }; say EM.parse('!', :<foo>);
