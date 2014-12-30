#!/usr/bin/env perl6
use v6;

my $x = 0|6;
my $str = "Hello World";
my $sub = substr($str, $x, 5);

my @values = $sub.values;
say @values;
#say "{@values}";        # Hello World
#say $sub.values[0];     # Hello
#say $sub.values.elems;  # 2 - the number of elements in the junction

