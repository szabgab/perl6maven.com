#!/usr/bin/env perl6
use v6;

my $x = 1|2;                              # junction
if $x == 1 { say 't' } else { say 'f' } # t
if $x == 2 { say 't' } else { say 'f' } # t
if $x == 3 { say 't' } else { say 'f' } # f 
if $x != 1 { say 't' } else { say 'f' } # f    which is the same as
if !($x == 1) { say 't' } else { say 'f' } # f



#TODO
#my @values = $x.values;          # fetch the values of a junction, order is random
#say $x.values.elems;             # 2  
#say $x.values[0] + $x.values[1]; # 3
#
#my $y = 1|1|2;
#say $y.values.elems;             # 2
#say $y.values[0] + $y.values[1]; # 3
## 1|1|2    is the same as 1|2
#
#my $r1 = (1|2 == 1);  # (Bool::False | Bool::True)
#my $r2 = (1|2 == 2);  # (Bool::False | Bool::True)
#
#my $r3 = (1|2 == 3);  # (Bool::False)
#                    # there is only one element because multiple same booleans are irrelevant
#                    # this is the same reduction we saw with 1|1|2
#

