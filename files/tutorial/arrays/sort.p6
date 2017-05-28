#!/usr/bin/env perl6
use v6;

my @names = <foo bar moose bu>;
my @sorted_names = sort @names;
say @sorted_names.perl;   # ["bar", "bu", "foo", "moose"]


my @numbers = 23, 17, 4;
my @sorted_numbers = sort @numbers;
say @sorted_numbers.perl;   # [4, 17, 23]


my @sort_names_by_length = sort { $^a.chars <=> $^b.chars }, @names;
say @sort_names_by_length.perl;   # ["bu", "foo", "bar", "moose"]

# the same result with one sub (Schwartzian transformation)
my @sort_1 = sort { $_.chars }, @names;
say @sort_1.perl;     # ["bu", "foo", "bar", "moose"]

my @sort_2 = @names.sort({ $_.chars });
say @sort_2.perl;     # ["bu", "foo", "bar", "moose"]

my @sort_3 = @names.sort: { $_.chars };
say @sort_3.perl;     # ["bu", "foo", "bar", "moose"]


my @words = <moo foo bar moose bu>;
say @words.sort({ $^a.chars <=> $^b.chars}).perl; # ["bu", "moo", "foo", "bar", "moose"];

say @words.sort({ $^a.chars <=> $^b.chars or $^a cmp $^b}).perl; # ["bu", "bar", "foo", "moo", "moose"];

# TODO: should be also:
# say @words.sort({ $^a.chars <=> $^b.chars }, {$^a cmp $^b}).perl; # ["bu", "bar", "foo", "moo", "moose"];
# say @words.sort({ $_.chars },  {$^a cmp $^b}).perl; # ["bu", "bar", "foo", "moo", "moose"];
