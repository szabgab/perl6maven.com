use v6;


say prompt("type in a number 50 or more: ", { $^a >= 50 });

multi sub prompt($str, $cond) { 
    my $ret;
    say $cond.WHAT;
    while not defined $ret or not $cond($ret) {
        $ret = prompt($str);
    }
    return $ret;
}
