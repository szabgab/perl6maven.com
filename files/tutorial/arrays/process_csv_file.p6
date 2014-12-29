#!/usr/bin/env perl6
use v6;

my $file = 'examples/arrays/sample_csv_file.csv';
if defined @*ARGS[0] {
    $file = @*ARGS[0];
}

my $sum = 0;
my $data = open $file;
for $data.lines -> $line {
    my @columns = split ",", $line;
    $sum += @columns[2];
}
say $sum;

