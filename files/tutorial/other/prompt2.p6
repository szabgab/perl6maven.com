use v6;


say prompt("type in a number 50 or more: ", { $^a >= 50 });
say prompt("two or three ", 2|3);

multi sub prompt($str, $cond) { 
    my $ret;
    say $cond.WHAT;
    if ($cond.WHAT eq 'Block()') {
        say "block";
        while not defined $ret or not $cond($ret) {
            $ret = prompt($str);
        }
    } else {
        say "other";
        while not defined $ret or not $ret ~~ $cond {
            $ret = prompt($str);
        }
    }
    return $ret;
}
