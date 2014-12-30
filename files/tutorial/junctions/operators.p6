#!/usr/bin/env perl6
use v6;

my $options = 1|2|3;

$options *= 2;    # now it has 2|4|6

for 1..8 -> $i {
    if $i == $options {
        say $i;
    }
}

