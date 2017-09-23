class Foo {
    method bar() {
        say "OK";
    }
}
class Baz {
    has Foo $.a = Foo.new();

    method qux {
        # $.a.bar();
        LEAVE $.a.bar();
    }
}


# LEAVE $.a.bar();

Baz.new().qux();
