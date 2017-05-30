#!/usr/bin/env perl6
use v6;

my @duplicates = 1, 1, 2, 5, 1, 4, 3, 2, 1;
say @duplicates.perl;
# prints [1, 1, 2, 5, 1, 4, 3, 2, 1]


my @unique = unique @duplicates;
say @unique.perl;

# prints [1, 2, 5, 4, 3]


my @chars = <b c a d b a a a b>;
say @chars.perl;

# prints ["b", "c", "a", "d", "b", "a", "a", "a", "b"]

my @singles = unique @chars;
say @singles.perl;

# prints ["b", "c", "a", "d"]
