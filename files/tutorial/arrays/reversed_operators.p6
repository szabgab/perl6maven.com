#!/usr/bin/env perl6
use v6;

say 2 / 4; # 0.5
say 2 R/ 4; # 2

# spaceship operator
say 1 <=> 2; # Less
say 2 <=> 1; # More

say 1 R<=> 2; # More
say 2 R<=> 1; # Less

say "a" gt "b"; # False
say "a" Rgt "b"; # True
