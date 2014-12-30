use v6;

my $phone = "054-1234567";

if "foo 3-4 bar" ~~ m/ \d '-' \d / {
    say "match others as well";
} 

