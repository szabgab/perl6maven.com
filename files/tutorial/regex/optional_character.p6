#!/usr/bin/env perl6
use v6;


my $c = "What was the color of the cat?";
if ($c ~~ m/color/) {
    say "Matching '$/'";                      # 'color'
}

my $q = "Is the colour black?";
if ($q ~~ m/color/) {
    say "Matching '$/'";
} else {
    say "color is not matching colour";       # this one
}


if ($c ~~ m/colour/) {
    say "Matching '$/'";
} else {
    say "and colour is not matching color";   # this one
}


if ($c ~~ m/colo u? r/) {
    say "Matching '$/'";                      # 'color'
}
if ($q ~~ m/colo u? r/) {
    say "Matching '$/'";                      # 'clour'
}
