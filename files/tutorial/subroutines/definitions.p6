#!/usr/bin/env perl6
use v6;

my $z = add(19, 23);
say "first ", $z;

say "second ", add2(19, 23);

say "third ", add3(2, 3);


sub add {
    my ($x, $y) = @_;
    return $x + $y;
}

sub add2 ($x, $y) {
    return $x + $y;
}

sub add3 (Int $x, $y) {
    return $x + $y;
}
