#!/usr/bin/env perl6
use v6;

my $filename = 'examples/phonebook.txt';

my @lines = lines $filename.IO;
for @lines -> $line {
    say "L: $line";
}

#my %phonebook = map {split ",", $_}, @lines;
#my %phonebook = map {$_.comb(/\w+/)}, @lines;

my %phonebook = slurp($filename).comb(/\w+/);

my $name = prompt "Name:";
say %phonebook{$name};

