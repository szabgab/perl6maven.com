#!/usr/bin/env perl6
use v6;


my $str = 'abc = 123';

# $str ~~ s/\=/x/;

$str = $str.subst(/\=/, 'x');
say $str;

