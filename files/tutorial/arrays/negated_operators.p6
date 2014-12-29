#!/usr/bin/env perl6
use v6;

# Equality
say 1 ==  1 ?? 'y' !! 'n'; # y
say 1 !== 1 ?? 'y' !! 'n'; # n
say 1 !=  1 ?? 'y' !! 'n'; # n

say 'ac' eq  'dc' ?? 'y' !! 'n'; #n
say 'ac' !eq 'dc' ?? 'y' !! 'n'; #y

say 1 <  2  ?? 'y' !! 'n'; # y
####say 1 !< 2  ?? 'y' !! 'n'; # n

say 1 <=  2  ?? 'y' !! 'n'; # y
####say 1 !<= 2  ?? 'y' !! 'n'; # n

say 1 >=  2  ?? 'y' !! 'n'; # n
####say 1 !>= 2  ?? 'y' !! 'n'; # y
