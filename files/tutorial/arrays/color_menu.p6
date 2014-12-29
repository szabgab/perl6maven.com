#!/usr/bin/env perl6
use v6;

my @colors = <Blue Yellow Brown White>;

for 1..@colors.elems -> $i {
    say "$i) @colors[$i-1]";
}

my $input = prompt("Please select a number: ");
say "You selected @colors[$input-1]";

