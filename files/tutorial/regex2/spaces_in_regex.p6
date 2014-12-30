#!/usr/bin/env perl6
use v6;


my $str = 'The black cat climbed to the green tree.';

if $str ~~ m/black cat/ {
    say "Matching '$/'";
} else {
    say "No match as whitespaces are disregarded";
}

if $str ~~ m/  black \s cat / {
    say "Matching - Perl 5 style white-space meta character works";
}

if $str ~~ m/black  ' '  cat/ {
    say "Matching the real Perl 6 style would be to use strings embedded in regexes";
}


if $str ~~ m/black <space> cat/ {
    say "Matching - or maybe the Perl 6 style is using named character classes ";
}


