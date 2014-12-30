#!/usr/bin/env perl6
use v6;

my regex num { \d ** 1..3 };

say 10    ~~ m/ <num> /;     # 10
say $/;                      # 10
say $/<num>;                 # 10

my regex dot { \. };

my regex ip { ^  <num> <dot> <num> <dot> <num> <dot> <num> $ };

say "127.0.0.1" ~~ m/ <ip> /;      # 127.0.0.1
say $/;      # 127.0.0.1
say $/<ip>;  # 127.0.0.1
say $/<ip><num>[0]; # 127
say $/<ip><num>[1]; # 0
say $/<ip><num>[2]; # 0
say $/<ip><num>[3]; # 0
