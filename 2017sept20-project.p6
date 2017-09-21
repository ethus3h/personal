#!/usr/bin/env perl6
use v6;

# Blank line
say '';

# Get the first argument, and check its type
my $argument1 = prompt("What is the first number? ");

# Check if it's empty. Empty string becomes 0 when cast to a number, and that isn't desirable.
( $argument1 === '' ) && fail "That is an empty string.";

# Cast it to a number, and check its type to make sure it came through OK.
my $argument1 = +($argument1);
my $foo = ''; ( $foo === '' ) && say 'fail';
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

# Blank line
say '';

# Print out the answers.
say "$argument1 + $argument2 = " ~ $argument1 + $argument2;
say "$argument1 - $argument2 = " ~ $argument1 - $argument2;
say "$argument1 * $argument2 = " ~ $argument1 * $argument2;
{
    say "$argument1 / $argument2 = " ~ $argument1 / $argument2;
    CATCH {
        when X::Numeric::DivideByZero { say "It looks like the second number was 0, so a X::Numeric::DivideByZero exception was thrown." }
    }
}

# Blank line
say '';

say "Testing division by zero: $argument1 / 0";
# We need to catch exception in division by zero.
# This is in braces to give it its own scope, so it doesn't catch exceptions thrown by the earlier code.
{
    say "$argument1 / 0 = " ~ $argument1 / 0;
    CATCH {
        when X::Numeric::DivideByZero { say "This threw an exception (as expected)." }
    }
}
say "Testing division by zero done.";
