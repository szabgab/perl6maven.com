#!/usr/bin/env perl6
use v6;

my $possible_options = 1|2|3;
my $c = prompt "please give a number(1,2 or 3): ";
if $c == $possible_options {
    say "Correct choice: $c";
} else {
    say "Incorrect choice: $c";
}

