#!/usr/bin/env perl6
use v6;

my $a = prompt "First string:";
my $b = prompt "Second string:";

my $c = $a ~ $b;

say "\nResult: $c";

