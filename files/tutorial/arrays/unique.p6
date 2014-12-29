#!/usr/bin/env perl6
use v6;

my @duplicates = 1, 1, 2, 5, 1, 4, 3, 2, 1;
say @duplicates.perl;
# prints Array.new(1, 1, 2, 5, 1, 4, 3, 2, 1)


my @unique = uniq @duplicates;
say @unique.perl;

# prints Array.new(1, 2, 5, 4, 3)


my @chars = <b c a d b a a a b>;
say @chars.perl;

# prints Array.new("b", "c", "a", "d", "b", "a", "a", "a", "b")

my @singles = uniq @chars;
say @singles.perl;

# prints Array.new("b", "c", "a", "d")

