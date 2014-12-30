use v6;

my $words = 'foo, bar, moo';

if $words ~~ m/^ [\w+] ** [\,\s*] $/ {
    say 'match words again';
}

