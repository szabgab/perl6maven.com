#!/usr/bin/env perl6
use v6;

my $filename = $*PROGRAM_NAME;

my $data = slurp $filename;
say $data.bytes;
