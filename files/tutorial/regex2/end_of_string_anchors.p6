use v6;

my $phone = "054-1234567";

if $phone ~~ m/ ^ \d+ '-' \d+ $ / {
    say "Use anchors and quantifiers";
}


