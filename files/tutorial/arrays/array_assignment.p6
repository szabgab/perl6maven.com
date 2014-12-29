#!/usr/bin/env perl6
use v6;

my $owner = "Moose";
my @tenants = "Foo", "Bar";
my @people = ($owner, 'Baz', @tenants);  # the array is flattened:
say "{@people}";                         # Moose Baz Foo Bar


my ($x, @y)     = (1, 2, 3, 4); 
say $x;                              # $x = 1
say "{@y}";                          # @y = (2, 3, 4)

