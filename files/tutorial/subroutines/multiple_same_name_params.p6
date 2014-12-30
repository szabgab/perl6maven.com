#!/usr/bin/env perl6
use v6;

# TODO named parameters
f(1, 4);           # 1  4
#f(y => 6, x => 2); # 2  6
#f(2, y => 6);      # 2  6
#f(2, x => 6);      # 6  2

sub f($x, $y) {
    say "$x $y";
}

sub u($x, $y?) {
}

sub x($x, $y = 7) {
}



