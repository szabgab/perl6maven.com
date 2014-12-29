#!/usr/bin/env perl6
use v6;

# spaceship operator
say 1 <=> 2;  # -1
say 2 <=> 1;  # 1

say 1 R<=> 2;  # 1
say 2 R<=> 1;  # -1

