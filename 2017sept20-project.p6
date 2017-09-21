#!/usr/bin/env perl6
use v6;

# Blank line
say '';

# Get the first argument, and check its type
my $argument1str = prompt("What is the first number? ");

# Check if it's empty. Empty string becomes 0 when cast to a number, and I think that would be surprising in interactive use.
( $argument1str === '' ) && fail "That is an empty string.";

# Tell it to use it as a number-y thing, and check its type afterwards to make sure it actually is a number.
my $argument1 = +($argument1str); # We can't use the variable to initialize itself, 
                                  #     so my $argument1str = +($argument1str) isn't an option.
if ! (
        ( Int === $argument1.WHAT ) ||
        ( Num === $argument1.WHAT ) ||
        ( Rat === $argument1.WHAT )
    )
{
    fail "That doesn't look like a number."
}

# Get the second argument, and check it
my $argument2str = prompt("What is the second number? ");
( $argument2str === '' ) && fail "That is an empty string.";
my $argument2 = +($argument2str);
if ! (
        ( Int === $argument2.WHAT ) ||
        ( Num === $argument2.WHAT ) ||
        ( Rat === $argument2.WHAT )
    )
{
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

say "Showing off Unicode support 😊️";
say "꯸ + ꤄ + 𒐟 = " ~ ꯸ + ꤄ + 𒐟; # U+ABF8 MEETEI MAYEK DIGIT EIGHT + U+A904 KAYAH LI DIGIT FOUR + U+1241F CUNEIFORM NUMERIC SIGN TWO GESHU
