class Foo {
    method bar() {
        say "OK";
    }
}
grammar EM {
    has Foo $.a = Foo.new();

    method qux {
        $.a.bar();
    }
}


# LEAVE $.a.leave-scope();
