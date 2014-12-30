use v6;

my $phone = "054-1234567";

# You can also create named regexes:

my regex prefix { \d ** 2..3 }
my regex number { <+digit - [0]> \d ** 6 }
# if $phone ~~ m/^ <prefix> '-' <number> $/ {
# but this does not work now so we write the full syntax:
if $phone ~~ m/^ <prefix=&prefix> '-' <number=&number> $/ {
    say "prefix $/<prefix>  number: $/<number>";
}
# as you can see $/ is also a hash


