use v6;

# Perl 5: if
# Perl 6: Same, but no need to for () around the condition
my $x = 23;
if $x < 42 {
}


# Perl5: foreach (for)
my @names = <Larry Guido Matz>;
for @names -> $person {
    say $person;
}

# Perl5: for (foreach)
loop (my $i=1; $i < 10; $i++) {
    say $i;
}

# infinite loop:
loop {
    # well, almost infinite :-)
    last;
}


# Perl5: while
while $i < 10 {
    say $i;
}


