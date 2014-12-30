#!/usr/bin/env perl6
use v6;

my $good_str = ' "quoted value" more text';
my $bad_str  = ' "quoted value more text';


say $good_str ~~ m/ \" .* {{print "1"}} \" /;
say $bad_str ~~ m/ \" .* {{print "2"}} \" /;

say $bad_str ~~ m/ \" .*: {{print "3"}} \" /;
say $good_str ~~ m/ \" .*: {{print "4"}} \" /;


say $good_str ~~ m/ \" <-[\"]>* {{print "1"}} \" /;
say $bad_str ~~ m/ \" <-[\"]>* {{print "2"}} \" /;

say $good_str ~~ m/ \" <-[\"]>*: {{print "3"}} \" /;
say $bad_str ~~ m/ \" <-[\"]>*: {{print "4"}} \" /;


say $good_str ~~ m/ \" ~ \" <-[\"]>* {{print "5"}} /;
# say $bad_str  ~~ m/ \" ~ \" <-[\"]>* {{print "6"}} /;
# will throw an exception "Unable to parse, could not find final \"
