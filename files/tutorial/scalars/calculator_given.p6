#!/usr/bin/env perl6
use v6;

my $a        = prompt "Number:";
my $operator = prompt "Operator: [+-*/]:";
my $b        = prompt "Number:";

given $operator {
    when "+" { say $a + $b; }
    when "-" { say $a - $b; }
    when "*" { say $a * $b; }
    when "/" { say $a / $b; }
    default  { say "Invalid operator $operator"; }
}
 
