#!/usr/bin/env perl6
use v6;

my $N = 10; # @*ARGS;

say "Computing Fibonacci of {$N}";
say "Result: " ~ fib_recursive($N);
say "Result: " ~ fib_r($N);
say "All: " ~ join " ", fib($N);

sub fib_recursive ($n) {
    return 1 if $n == 1 or $n == 0;
    return fib_recursive($n-1)+fib_recursive($n-2);
}

sub fib_r ($n) {
    return 1 if $n == (1|0);
    return fib_r($n-1)+fib_r($n-2);
}

sub fib ($n) {
    my @fibs;

    @fibs.push(1) if $n > 0;
    @fibs.push(1) if $n > 1;

    for 2..$n {
        @fibs.push(@fibs[*-1]+@fibs[*-2]);
    }
    return @fibs;
}


