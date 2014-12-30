use v6;

my $s = 'The elvish brown fox jumped over the the lazy dog';
my regex word { \w+ [ \' \w+]? }
my regex dup  { << <word=&word> \W+ $<word> >> }

if $s ~~ m/ <dup=&dup> / {
    say "Found '{$<dup><word>}' twice in a row";
}

