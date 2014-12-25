use v6;

my $age = 42;

if $age > 18 {
    say "Above 18";
} else {
    say "Below 18";
}

say $age > 18 ?? "Above 18" !! "Below 18";

