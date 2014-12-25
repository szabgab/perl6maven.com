#!/usr/bin/env perl6
use v6;

my $s = "The black cat climbed the green tree";
my $z;
$z = substr $s, 4, 5;                    # $z = black
say $z;
$z = substr $s, 4, *-11;                 # $z = black cat climbed the
say $z;
$z = substr $s, 14;                      # $z = climbed the green tree
say $z;
$z = substr $s, *-4;                     # $z = tree
say $z;
$z = substr $s, *-4, 2;                  # $z = tr
say $z;

