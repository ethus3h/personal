class Foo {
    method qux {
        say "OK";
    }
}
Foo.new().qux();

class Baz {
    has Foo $.foo;
    method bar {
        $.foo.qux();
    }
}
Foo.new().qux();
Baz.new().bar();
