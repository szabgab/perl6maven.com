use v6;

my $luck = prompt "What is your lucky number? ";
if $luck == 3 or $luck == 7 or $luck == 13 {
    say "Oh, that's like mine";
}

if $luck == 3|7|13 {
    say "Oh, that's still like mine";
}

