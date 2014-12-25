#!/usr/bin/env perl6
use v6;

my $a = prompt "Type in a number between 23 and 42: ";
if 23 <= $a and $a <= 42 {
    say "Good, $a is in the range.";
} else {
    say "Did I say between 23 and 42 ?";
}


# you can also compare like this
if 23 <= $a <= 42 {
    say "Good, $a is in the range.";
} else {
    say "Did I say between 23 and 42 ?";
}




my $small = prompt "Type another number between 0 and $a: ";
my $big = prompt "Type another number between $a and 100: ";

if 0 <= $small <= $a <= $big <= 100 {
    say "good";
} else {
    say "something is fishy";
}

