use v6;

# Let's see something else
my $good = 'this_is_a_long_variable = 456 + 789';
my $bad  = 'this_is_a_long_variable = 456 +';

for $good, $bad -> $exp {
    if $exp ~~ m/:s ^ \w+ \= \d+ \+ \d+ $/ {
        say "Match: $exp";
    }
}

# mark the quantifyers as not backtracking

# m/:s ^ \w+: \= \d+: \+ \d+: $/ {

# or use the :ratchet modifier to set all the 
# quantifiers non-backtracking

# m/:s :ratchet ^ \w+ \= \d+ \+ \d+ $/ {

# and there is a special name for this called token

my token sentence { ^ \w+ \= \d+ \+ \d+ $ }


