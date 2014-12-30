#!/usr/bin/env perl6
use v6;

sub infix:<is_a_lot_bigger> ($leftop, $rightop) {
    return $leftop > $rightop + 10 ?? 1  !! 0;
}

say 4 is_a_lot_bigger 3;
say 14 is_a_lot_bigger 3;

# sub infix:<\>\>\>> ($leftop, $rightop) {
#     return $leftop > $rightop + 10 ?? 1  !! 0;
# }
# 
# say 7 >>> 3;
# say 24 >>> 8;
# 

sub infix:<+++> ($leftop, $rightop) {
    return $leftop > $rightop + 10 ?? 1  !! 0;
}

say 7 +++ 3;
say 24 +++ 8;
