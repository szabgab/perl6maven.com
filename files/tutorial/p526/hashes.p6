#!/usr/bin/env perl6
use v6;

my %h = ("Perl", "Larry", "Python", "Guido");      # creates hash as in Perl5
# Perl5: hash element
say %h{"Perl"};                                    # accessing hash elements is simialr but the sigil remains %
# Perl5: hash key without quotes
say %h<Perl>;                                      # if you want to leave out the quotation marks "" (was $h{Perl} in Perl5)

# Perl5: exists
%h.exists("Perl");                                 # checks if key exists (formally the exists function)
defined(%h<Perl>);                                 # checks if the value of the give key is defined

# Perl5: keys
keys %h;                                           # returns a list of keys just as in Perl5
%h.keys;                                           # also works

# Perl5: values

# Perl5: each
# %h.kv
for %h.kv -> $key, $value {
    say "$key => $value";
}

