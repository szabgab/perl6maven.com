use v6;

my $phone = "054-1234567";

if $phone ~~ m/ \d \- \d / {
    say "There are two numbers and a hyphen";
}

# or put in quotes:
if $phone ~~ m/ \d '-' \d / {
    say "Still two numbers and a hypen";
}


