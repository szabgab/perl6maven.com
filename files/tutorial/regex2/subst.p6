use v6;

# substitution:

my $str = "replace     all    the space   in the string by    one space";

say $str.subst(/ \s+ /, ' ',  :g);

