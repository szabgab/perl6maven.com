#!/usr/bin/env perl6
use v6;

my $filename = $*PROGRAM_NAME;

my $fh = open $filename;
my $line = $fh.get;
say $line;
