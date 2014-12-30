#!/usr/bin/env perl6
use v6;

my $filename = 'examples/words.txt';

my %counter;

my $fh = open $filename;
for $fh.lines -> $line {
    my @words = split /\s+/, $line;
    for @words -> $word {
        %counter{$word}++;
    }
}

for %counter.keys.sort -> $word {
    say "$word {%counter{$word}}";
}
