use v6;

my $hidden = (1..200).pick;
# say $hidden;

my $guess = prompt "Type in your guess: ";
# say $guess;

if $guess == $hidden {
    say "Hit!";
} elsif $guess < $hidden {
    say "Your guess is too small";
} else {
    say "Your guess is too big";
}
