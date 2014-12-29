#!/usr/bin/env perl6
use v6;

my @ones = map { 1 }, 1..4;
say @ones.perl;   # [1, 1, 1, 1]

my %lookup = map { $_, 1 }, 1..4;
say %lookup.perl; # {"1" => 1, "2" => 1, "3" => 1, "4" => 1}

# blows up:
#my %lookup2 = map { $_ => 1 }, 1..4;
#say %lookup2.perl;

my %lookup3 = map { $^a => 1 }, 1..4;
say %lookup3.perl;   # {"1" => 1, "2" => 1, "3" => 1, "4" => 1}
