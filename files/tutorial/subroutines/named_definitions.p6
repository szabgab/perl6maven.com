#!/usr/bin/env perl6
use v6;

sub add ($a, $b) {
    return $a + $b;
}

say "first: ", add(2, 3);      # returns 5
#say add(2);        # is an error
#say add(2, 3, 4);  # is an error

sub sum (@numbers) {
    my $sum = 0;
    for @numbers -> $num {
        $sum += $num;
    }
    return $sum;
}

# Now you can already call sum(2) and sum(2, 3) and sum(2, 3, 4) and they
#say sum(2); #?? this is a scalar, not a list
say sum((2, 3));
say sum((2, 3, 4));


sub sumsum (*@numbers) {
    my $sum = 0;
    for @numbers -> $num {
        $sum += $num;
    }
    return $sum;
}

say sumsum(2);
say sumsum(2, 3);
say sumsum(2, 3, 4);
say sumsum((2, 3, 4));

