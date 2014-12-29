#!/usr/bin/env perl6
use v6;

say "Type in two values:";
my $a = $*IN.get;
my $b = $*IN.get;

($a, $b) = ($b, $a);
say $a;
say $b;

