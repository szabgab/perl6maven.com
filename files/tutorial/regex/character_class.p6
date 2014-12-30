#!/usr/bin/env perl6
use v6;

say 'k' ~~ / <[abcdefghijklmnopqrs]> /;   # k
say 'k' ~~ / <[a..s]> /;                  # k


say 'k' ~~ / <[a..s]  - [k]> /;           # no match here

say 'k' ~~ / <alpha> /;                   # k

say 'k' ~~ / <+alpha - [k] >/;            # no match here
say 'k' ~~ / <+alpha> /;                  # k


