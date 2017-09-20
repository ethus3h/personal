#!/usr/bin/env perl6
use v6;

# Get the first argument, and check its type
my $argument1 = +(prompt("What is the first number? "));
if ! (
        ( Int === $argument1.WHAT ) ||
        ( Num === $argument1.WHAT ) ||
        ( Rat === $argument1.WHAT )
    )
{
    say $argument2.WHAT;
    fail "That doesn't look like a number."
}

# Get the second argument, and check its type
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

# Print out the answers.
say "$argument1 + $argument2 = " ~ $argument1 + $argument2;
say "$argument1 - $argument2 = " ~ $argument1 - $argument2;
say "$argument1 * $argument2 = " ~ $argument1 * $argument2;
say "$argument1 / $argument2 = " ~ $argument1 / $argument2;
say "$argument1 / 0 = " ~ $argument1 / 0;
