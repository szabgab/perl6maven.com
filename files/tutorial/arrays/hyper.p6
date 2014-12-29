#!/usr/bin/env perl6
use v6;

my @x = (1, 2) >>+<< (3, 4);
say @x.perl;  # [4, 6]

#my @d = (1, 2) >>+<< (3);
#say @d.perl;  # [4, 6]
# Non-dwimmy hyperoperator cannot be used  on arrays of different sizes or dimensions.

my @z = (1, 2, 3, 4) >>+>> (1, 2);
say @z.perl;      # [2, 4, 5, 6]


@z = (1, 2, 3, 4) <<+>> (1, 2);
say @z.perl;      # [2, 4, 5, 6]

@z = (4) <<+>> (1, 2);
say @z.perl;      # [5, 6]


my @y = (1, 2) >>+>> 1;
say @y.perl;      # [2, 3]

