use v6;

my $words = 'foo, bar, moo';

if $words ~~ m/^ \w+ $/ {
    say 'no match';
}


