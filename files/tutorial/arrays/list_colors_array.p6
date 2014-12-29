#!/usr/bin/env perl6
use v6;

my @colors = "Blue", "Yellow", "Brown", "White";
say @colors;

say "--------------------------------";              # just for separation...

say "@colors";                                       # no interpolation!

say "--------------------------------";              # just for separation...

say "{@colors}";

say "--------------------------------";              # just for separation...

say "@colors[]";

say "--------------------------------";              # just for separation...

for @colors -> $color {
    say $color;
}

