#!/usr/bin/env perl6
use v6;

# the word first cannot be a subrule name

my regex frst { elso | erste | pervaya };
my regex scnd { masodik | zweite | i dont remember };

my $str = 'the erste bank and the masodik thing';
say $str ~~ m/ <frst> .* <scnd> /;
say $/<frst>;
say $/<scnd>;
say '---';
say $str ~~ m/ <.frst> .* <scnd> /;
say defined $/<frst> ?? $/<frst> !! '  no frst';
say $/<scnd>;
