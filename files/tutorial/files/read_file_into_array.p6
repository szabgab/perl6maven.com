#!/usr/bin/env perl6
use v6;

my $filename = $*PROGRAM_NAME;

# reads all the content of the file in the first element of the array!
my @content = slurp $filename;
say @content.elems;

# reads all the content of the file, every line an element in the array
my @rows = lines $filename.IO;
say @rows.elems;
