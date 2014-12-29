#!/usr/bin/env perl6
use v6;

my $color = @*ARGS[0];

if not $color {
    my @colors = <Blue Yellow Brown White>;

    for 1 .. @colors.elems -> $i {
        say "$i) @colors[$i-1]";
    }

    my $input = prompt "Please select a number: ";
    $color = @colors[$input-1];
}

say "You selected $color";

