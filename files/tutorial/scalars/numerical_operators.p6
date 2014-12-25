#!/usr/bin/env perl6
use v6;

my $x = 3;
my $y = 11;

my $z = $x + $y;
say $z;            # 14

$z = $x * $y;
say $z;            # 33
say $y / $x;       # 3.66666666666667

$z = $y % $x;      # (modulus)
say $z;            # 2

$z += 14;          # is the same as   $z = $z + 14;
say $z;            # 16

$z++;              # is the same as   $z = $z + 1;
$z--;              # is the same as   $z = $z - 1;

$z = 23 ** 2;      # exponentiation
say $z;            # 529

