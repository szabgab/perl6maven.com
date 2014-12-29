#!/usr/bin/env perl6
use v6;

say [+] 1, 2;   # 3
say [+] 1..10;  # 55

# factorial
say [*] 1..5;   # 120

say [**] 2,2,2; # 16    == 2**2**2

my @numbers = (2, 4, 3);

# check if the numbers are in growing order
say [<] @numbers;      # 0   

say [<] sort @numbers; # 1
