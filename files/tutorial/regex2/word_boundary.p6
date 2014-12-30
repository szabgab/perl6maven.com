use v6;

my $s = 'The elvish brown fox jumped over the the lazy dog';
# << and >> mark word boundary
if $s ~~ m/ << (\w+) \W+ $0 >> / {
    say $/[0];  # will print 'the'
}


