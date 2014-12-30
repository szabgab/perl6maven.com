use v6;

my $phone = "054-1234567";

if $phone ~~ m/ (\d+) \- (\d+) / {
    say "prefix: $/[0]";
    say "number:  $/[1]";
    say "full match: $/";
}


