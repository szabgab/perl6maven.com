use v6;

my $year = prompt "When were you born? ";
if $year > 1987 {
    say "You are younger than Perl by { $year - 1987 } years";
}


