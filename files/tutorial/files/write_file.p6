#!/usr/bin/env perl6
use v6;

my $filename = "temp.txt";

my $fh = open $filename, :w;
$fh.say("hello world");
$fh.close;

