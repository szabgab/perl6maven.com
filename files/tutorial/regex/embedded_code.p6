#!/usr/bin/env perl6
use v6;

my $str = "The black cat climbed the green tree";

$str ~~ m/
    a {{ print "a found\n" }}
    x {{ print "x found\n" }}
    /;
say "The match is '$/'";
