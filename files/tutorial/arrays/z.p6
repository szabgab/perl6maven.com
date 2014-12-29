#!/usr/bin/env perl6
use v6;

my @chars   = <a b c>;
my @numbers = <1 2 3>;

for @chars Z @numbers -> $letter, $number {
    say "$letter $number";
}
