use v6;

# Perl 5: my
# Perl 6: In Perl 6 you always need to have "my" (think as always use strict)
my $name = "Moose";

# Perl 6: Scalar variables still interpolate in double quoted strings:
say "Hello $name";
# In order to make the Object Oriented people happy Perl 6 also allows this:
"Hello $name".say;


# Perl 5: <STDIN>
# Perl 6: As reading a single line from standard input
#         is usually preceeded by a print statement the keyword to do that in Perl 6
#         is called prompt()
#         it chomps the newline off automatically.
my $line = prompt('Please type in your name: ');
say "Hi $line, how are you?";

# Perl 5: substr
# substr works as before but there is currently no 4 parameter version.
say substr $line, 2, 3;

# it also works this way
$line.substr(2, 3).say;


# Perl 5: length
my $a = "This is a string";
# Perl 6: Does not have a length() function, instead it has several
# functions with more precise meaning of the type of unit you are asking for:
# bytes, chars
say $a.chars;
say $a.bytes;

# There are also graphs and codes but they are not yet implemented in Rakudo
# see S32-setting-library/Str.pod for details



# Perl 5: chomp
# Perl 6: It will be used a lot less in Perl 6 as reading lines in Perl 6
# automatically chomps off the newline. In any case, in Perl 6 chomp returns
# the chomped string and does NOT change the original
my $b = chomp $a;

# Perl 5: defined
# Perl 6: is the same:
defined $b;

# Perl 5: undef
# Perl 6: is NOT the same !
#$b = undef;


# Perl 5: .
# Perl 6: String concatenation is now done with the ~ operator
my $str = "Foo" ~ "Bar";
$str.say;

$str ~= " and Moo";
say $str;

# Perl 5: x
# Perl 6: string repetition stayed the same
say "abc" x 3;

# Perl 5: index and rindex
# Perl 6: are the same
my $s = "The brown cat climbed the green tree";
index $s, "b";

# Perl 5: lc, uc
# Perl 6: are the same
say lc "Hello World";
say uc "Hello World";

