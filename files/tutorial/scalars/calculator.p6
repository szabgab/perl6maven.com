#!/usr/bin/env perl6
use v6;

my $a        = prompt "Number:";
my $operator = prompt "Operator: [+-*/]:";
my $b        = prompt "Number:";

if $operator eq "+" {
    say $a + $b;
} elsif $operator eq "-" {
    say $a - $b;
} elsif $operator eq "*" {
    say $a * $b;
} elsif $operator eq "/" {
    say $a / $b;
} else {
    say "Invalid operator $operator";
}
