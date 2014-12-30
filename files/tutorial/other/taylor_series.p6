use v6;

say sine-power(1);
sub sine-power($x) {
    my $sign = 1;
    gather for 1, 3 ... * -> $n {
        take $sign * $x ** $n / [*] (1 ... $n);
        $sign *= -1;
    }
}

# source: http://justrakudoit.wordpress.com/2010/07/20/fun-with-series/
