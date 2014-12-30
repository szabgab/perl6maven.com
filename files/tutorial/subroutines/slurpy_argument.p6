#!/usr/bin/env perl6
use v6;

sub sum(*@values) {
    my $sum = 0;
    for @values -> $v {
        $sum += $v
    }
    return $sum;
}

say sum(2, 3);      # 5

my @a = (2, 3, 4);
my $z = 5;
say sum(@a, $z);  # 14

