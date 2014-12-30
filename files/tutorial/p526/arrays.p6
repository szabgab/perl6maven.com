use v6;

# Creating an array in Perl 6 can be the same as in Perl 5
my @numbers = ("one", "two", "three");

# For debugging prints one will youse the .perl method instead of Data::Dumper:
@numbers.perl.say;   # ["one", "two", "three"]


# In Perl 6 there is no need for the parentheses:
my @digits = 1, 3, 6;
@digits.perl.say;  # [1, 3, 6]


# The Perl 5 qw() operator is replaced by the angle brackets:
my @names = <foo bar baz>;
@names.perl.say;  # ["foo", "bar", "baz"]


# Arrays do NOT interpolate any more in double quoted strings:
say "@names";                        # @names

# So you can safely write the following without escaping the at mark:
say "joe@names.org";                 # joe@names.org

# If you do want to interpolate the values of an array you have to put it inside curly braces:
say "names: {@names}";               # names: foo bar baz


# When accessing elements of an array in Perl 6 the sigil does NOT change!
# This will be very strange for Perl 5 programmers but it has some advantages
# on the long run.

say @names[0];    # foo


# Instead of the quite ugly $#array notation used in Perl 5
# fetching the number of elements of array is done in Perl 6 by the
# elems() function
# Though I think the object oriented writing is much nicer here:
say @names.elems;                   # 3  #TODO: this was elems @names but does not work on 12/6/2010
say @names.elems;                   # 3


# Ranges are available in Perl 6 just as in Perl 5
my @d = 1..11;
@d.perl.say;    # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# It works with characters as well
my @chars = ('a' .. 'd');
@chars.perl.say;    # ["a", "b", "c", "d"]

# The C-style version of the Perl 5 "for" loop is now called "loop"
# but I won't show it here as it is way better to use the
# the iterator style for loop that most people in Perl 5 write as "foreach".
# In Perl 6 it is spelled as "for".

for 1..3 -> $i {
    say $i;       # 1   # 2    # 3     (on 3 lines)
}

# The same works on arrays as well:

for @names -> $n {
    say $n;        # foo  # bar # baz    (on 3 lines)
}

# This is one of the cases where you don't need to declare a variable
# using "my". The looping variable is automatically declared for you
# and scoped to the block of the for loop.


# If you need to iterate over the indexes of an array then you could write
for 0..@names.elems -1 -> $i {
    say "$i {@names[$i]}"; # 0 foo       # 1 bar       # 2 baz    (on 3 lines)
}

# Or you can pick one of the suggestions I got from Moritz Lenz on #perl6 (Thanks Moritz!):
for @names.keys -> $i {
    say "$i {@names[$i]}"; # 0 foo       # 1 bar       # 2 baz    (on 3 lines)
}

# The keys method borrowed from the hashes will return all the indexes of an array.
# Even if your array has "holes" in it, elements with undef as value, key will
# still include the indexes of such elements.


# split acts similar to its Perl 5 version but the defaults do not apply any more
# and you should read the spec anyway.
# See S32-setting-library/Str.pod for more details.
# ( http://perlcabal.org/syn/S32/Str.html )

"a,b,c".split(',').perl.say;    # ["a", "b", "c"]


