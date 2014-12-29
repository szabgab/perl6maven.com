#!/usr/bin/env perl6
use v6;

my @a = (1, 2, 3, 5, 6, 7);

for @a -> $a, $b {
    say $a+$b;
}
