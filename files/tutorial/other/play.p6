#!/usr/bin/env perl6

use v6;

# does declaring a variabe to be Int mean that it does not accept string in
# it? It does not seems so from this example.
my Int $x = 23;
say $x;
$x = "qqrq";
say $x;

