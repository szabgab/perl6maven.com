#!/usr/bin/env perl6
use v6;

(1, 5.2, "apple");          # 3 values

(1,2,3,4,5,6,7,8,9,10);     # nice but we are too lazy, so we write this:
(1..10);                    # same as (1,2,3,4,5,6,7,8,9,10)
(1..Inf);                   # represents the list of all the numbers
(1..*);                     # this too

("apple", "banana", "peach", "blueberry");   # is the same as
<apple banana peach blueberry>;              # quote word

my ($x, $y, $z);               # We can also use scalar variables as elements of a list

