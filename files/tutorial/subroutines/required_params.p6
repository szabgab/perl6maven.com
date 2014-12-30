#!/usr/bin/env perl6
use v6;

sub add ($a, $b) {
    return $a + $b;
}

say add(2, 3);      # returns 5

#say add(2);        # is an error
#say add(2, 3, 4);  # is an error
