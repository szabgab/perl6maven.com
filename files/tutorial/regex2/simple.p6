use v6;

my $text = "Learning regexes";
if $text ~~ m/ regex / {
    say "This is about regexes!";
}

if $text !~~ m/ foobar / {
    say "No foobar in $text";
}
