#!/usr/bin/env perl6
use v6;

my @colors = "Blue", "Yellow", "Brown", "White";
say @colors;

say "--------------------------------";

say "@colors";                                       # says "@colors" directly!

say "--------------------------------";

say "{@colors}";                                     # says the items in the list with spaces as separators

say "--------------------------------";

say "@colors[]";                                     # says the items in the list with spaces as separators

say "--------------------------------";

for @colors -> $color {
    say $color;
}
