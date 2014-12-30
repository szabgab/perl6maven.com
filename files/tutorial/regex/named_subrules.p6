#!/usr/bin/env perl6
use v6;

my regex num { \d ** 1..3 };

say 10    ~~ m/ <num> /;     # 10
say 1234  ~~ m/ <num>  /;    # 123
say 'abc' ~~ m/ <num> /;     # no match
say 'a7c' ~~ m/ <num> /;     # 7
say 'a7c' ~~ m/ ^ <num> $ /; # no match

my regex dot { \. };

say "x" ~~ m/ <dot> /;    # no match
say "x.y" ~~m/ <dot> /;   # .

my regex ip { ^  <num> <dot> <num> <dot> <num> <dot> <num> $ };

say "1.2.3.4" ~~ m/ <ip> /;      # 1.2.3.4
say "2.3.4" ~~ m/ <ip> /;        # no match
say "1.2.3.4.5" ~~ m/ <ip> /;    # no match
say "999.0.0.9"  ~~ m/ <ip> /;   # 999.0.0.9

