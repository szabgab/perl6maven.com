#!/usr/bin/env perl6
use v6;

my @x = (1, 2) X+ (4, 7);
say @x.perl;        # [5, 8, 6, 9]


my @y = 1, 2 X+ 4, 7;
say @y.perl;        # [5, 8, 6, 9]


my @str = 1, 2 X~ 4, 7;
say @str.perl;        # ["14", "17", "24", "27"]

# without any special operator  (is the same what X, should be)
my @z = 1, 2 X 4, 7;
say @z.perl;          # [1, 4, 1, 7, 2, 4, 2, 7]
