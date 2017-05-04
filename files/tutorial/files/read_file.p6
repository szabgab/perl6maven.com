#!/usr/bin/env perl6
use v6;

my $filename = $*PROGRAM-NAME;

my $fh = open $filename;
for $fh.lines -> $line {
    say $line;
}

