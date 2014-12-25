#!/usr/bin/env perl6
use v6;

my $x = "Hello";
my $y = "World";

# ~ is the concatenation operator, attaching one string after the other
my $z = $x ~ " " ~ $y;  #       the same as "$x $y"
say $z;                 # Hello World



my $w = "Take " ~ (2 + 3);
say $w;                        # Take 5
say "Take 2 + 3";              # Take 2 + 3
say "Take {2 + 3}";            # Take 5



$z ~= "! ";             #       the same as  $z = $z ~ "! ";
say "'$z'";             # 'Hello World! '
