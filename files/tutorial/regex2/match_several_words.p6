use v6;

my $words = 'foo, bar, moo';

if $words ~~ m/^ [\w+\,\s*]* \w+ $/ {
    say 'match words';
}


