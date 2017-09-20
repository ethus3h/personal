#!/usr/bin/env perl6
use v6;

my $argument1 = +(prompt("What is the first number? "));
if ! ( ( Int === $argument1.WHAT ) || ( Num === $argument1.WHAT ) ) {
    fail "That doesn't look like a number."
}

my $argument2 = +(prompt("What is the second number? "));
if ! (
        ( Int === $argument2.WHAT ) ||
        ( Num === $argument2.WHAT ) ||
        ( Rat === $argument2.WHAT )
    )
{
    say $argument2.WHAT;
    fail "That doesn't look like a number."
}

if  ( ( Int === $argument1.WHAT ) || ( Num === $argument1.WHAT ) ) &&
    ( ( Int === $argument2.WHAT ) || ( Num === $argument2.WHAT ) )
{
    say "$argument1 + $argument2 = " ~ $argument1 + $argument2;
    say "$argument1 - $argument2 = " ~ $argument1 - $argument2;
    say "$argument1 * $argument2 = " ~ $argument1 * $argument2;
    say "$argument1 / $argument2 = " ~ $argument1 / $argument2;
    say "$argument1 / 0 = " ~ $argument1 / 0;
}
else {
}
