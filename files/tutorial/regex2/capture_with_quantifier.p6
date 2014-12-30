use v6;

my $words = 'foo, bar, moo';
if $words ~~ m/ (\w+) ** [\,\s*] / {
    say "match words: $/";
    say "$/[0]";
    say "first:  $/[0][0]";
    say "second: $/[0][1]";
    say "third:  $/[0][2]";
    say "all: ", $/[0].join(' | ');
}


