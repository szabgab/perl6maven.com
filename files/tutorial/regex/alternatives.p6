#!/usr/bin/env perl6
use v6;

my $str = 'foo and bar';
if ($str ~~ / foo | bar /) {
    say "'$/'";        # 'foo'
}

# apple pie    or  banana pie ?

my $food = 'There was a tasty banana pie after the dinner';
if ($food ~~ / apple \s pie | banana \s pie /) {
    say "'$/'";        # 'banana pie'
}



