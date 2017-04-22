#!/usr/bin/env perl6
use v6;

my @x = (1, 2) >>+<< (3, 4);
say @x.perl;  # [4, 6]

#my @d = (1, 2) >>+<< (3);
#say @d.perl;
# Lists on either side of non-dwimmy hyperop of infix:<+> are not of the same length

my @z = (1, 2, 3, 4) >>+>> (1, 2);
say @z.perl;      # [2, 4, 4, 6]


@z = (1, 2, 3, 4) <<+>> (1, 2);
say @z.perl;      # [2, 4, 4, 6]

@z = (4) <<+>> (1, 2);
say @z.perl;      # [5, 6]


my @y = (1, 2) >>+>> 1;
say @y.perl;      # [2, 3]

