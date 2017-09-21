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
    say $argument1.WHAT;
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

# We need to catch exception in division by zero.
# This is in braces to give it its own scope, so it doesn't catch exceptions thrown by the earlier code.
{
    say "Testing division by zero: $argument1 / 0";
    say "$argument1 / 0 = " ~ $argument1 / 0;
    CATCH {
        default { say "This threw an exception (as expected)." }
    }
}
