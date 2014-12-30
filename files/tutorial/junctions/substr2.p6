#!/usr/bin/env perl6
use v6;

my $resp = substr("The big cat", 0|4, 3|7);
say $resp.values.elems;         # 2

# the order of the results is undetermined!
say $resp.values[0].values[0];  # The
say $resp.values[0].values[1];  # The big

say $resp.values[1].values[0];  # big cat
say $resp.values[1].values[1];  # big

my $other = 
    substr("The big cat", 0, 3|7) | substr("The big cat", 4, 3|7);

#$other == $resp.values[0];

