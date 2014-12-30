#!/usr/bin/env perl6
use v6;

#double digit

# null PMC
#say '1234' ~~ / \d $0 /;

say '1234' ~~ / (\d) $0 /;            # no match
say '12234' ~~ / (\d) $0 /;           # 22

say '1234' ~~ / <digit> $<digit> /;   # no match
say '12234' ~~ / <digit> $<digit> /;  # 22

say '122342556' ~~ / <digit> $<digit> .* <digit> $<digit>/; # 2234255
say $/<digit>[0];  # 2
say $/<digit>[1];  # 5

