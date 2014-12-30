#!/usr/bin/env perl6
use v6;


# Perl5: open
my $fh = open 'examples/p526/files.p6', :r;

# Perl5: close
close($fh);
$fh.close


# Perl5: <$fh>
# $fh.readline


