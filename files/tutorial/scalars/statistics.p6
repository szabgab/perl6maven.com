#!/usr/bin/env perl6
use v6;

my $filename = 'examples/numbers.txt';

my $total = 0;
my $count = 0;
my $min;
my $max;

my $fh;
if ($fh = open $filename, :r) {
    for $fh.lines -> $line {
        if (not $count) {
            $total = $line;
            $min   = $total;
            $max   = $total;
        } else {
            $total = $total + $line;
            if ($min > $line) {
                $min = $line;
            }
            if ($max < $line) {
                $max = $line;
            }
        }
        $count++;
    }
    if ($total) {
        my $average = $total / $count;
        say "Total: $total, Count: $count Average: $average Min: $min Max: $max\n";
    } else {
        say "There were no numbers in the file";
    }
} else {
    say "Could not open '$filename'";
}


