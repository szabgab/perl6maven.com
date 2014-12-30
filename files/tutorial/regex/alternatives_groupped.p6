#!/usr/bin/env perl6
use v6;

# apple pie    or  banana pie ?

my $food = 'There was a tasty banana pie after the dinner';
if ($food ~~ / [ apple | banana ] \s pie /) {
    say "'$/'";        # 'banana pie'
	say '--';
}

if ($food ~~ / ( apple | banana ) \s pie /) {
    say $/;
	say '--';
    say $/[0];
	say '--';
	say $0;
}


