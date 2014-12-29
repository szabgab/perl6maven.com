#!/usr/bin/env perl6
use v6;

my @operator  = <+ - *>;
my @left      = <1 2 3>;
my @right     = <7 8 9>;

for @left Z @operator Z @right -> $a, $o, $b {
    say "$a $o $b";
}
