#!/usr/bin/env perl6
use v6;

# Blank line
say '';

# Get the first argument, and check its type
my $argument1str = prompt("What is the first number? ");

# Check if it's empty. Empty string becomes 0 when cast to a number, and I think that would be surprising in interactive use.
( $argument1str === '' ) && fail "That is an empty string.";

# Tell it to use it as a number-y thing, and check its type afterwards to make sure it actually is a number.
# This will usually create a Rat (rational number, made of a numerator and denominator).
# Traditional floating point numbers could be used, but don't really offer any advantage unless the input is actually a float.
# I'm assuming here that the input is a "normal" looking number, rather than a float in hexadecimal or binary or something.
my $argument1 = +($argument1str); # We can't use the variable to initialize itself, 
                                  #     so my $argument1str = +($argument1str) isn't an option.
if ! (
        ( Int === $argument1.WHAT ) ||
        ( Num === $argument1.WHAT ) ||
        ( Rat === $argument1.WHAT ) ||
        ( Real === $argument1.WHAT )
    )
{
    fail "That doesn't look like a number.";
}

# Get the second argument, and check it
my $argument2str = prompt("What is the second number? ");
( $argument2str === '' ) && fail "That is an empty string.";
my $argument2 = +($argument2str);
if ! (
        ( Int === $argument2.WHAT ) ||
        ( Num === $argument2.WHAT ) ||
        ( Rat === $argument2.WHAT ) ||
        ( Real === $argument2.WHAT )
    )
{
    fail "That doesn't look like a number.";
}

# Blank line
say '';

# Print out the answers.
say "Integer part of $argument1: " ~ truncate($argument1);
say "Decimal part of $argument1: " ~ $argument1 - truncate($argument1);
say "Decimal part of $argument1 as fraction: " ~ ($argument1 - truncate($argument1)).Rat().nude.join('/');

# Blank line
say '';

say "Integer part of $argument2: " ~ truncate($argument2);
say "Decimal part of $argument2: " ~ $argument2 - truncate($argument2);
say "Decimal part of $argument2 as fraction: " ~ ($argument2 - truncate($argument2)).Rat().nude.join('/');

# Blank line
say '';

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

# Blank line
say '';

say "Showing off Unicode support 😊️";
say "꯸ + ꤄ + 𒐟 = " ~ ꯸ + ꤄ + 𒐟; # U+ABF8 MEETEI MAYEK DIGIT EIGHT + U+A904 KAYAH LI DIGIT FOUR + U+1241F CUNEIFORM NUMERIC SIGN TWO GESHU

# Blank line
say '';

say "Done everything!"
