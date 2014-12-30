use v6;

my $s = 'The elvish brown fox jumped over the the lazy dog';
if $s ~~ m/ (\w+) \W+ $0 / {
    say $/[0];
}
# this will print an 'e' which is not what we wanted


