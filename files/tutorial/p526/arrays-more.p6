use v6;

# Usually I start the part about scalar and list contex
# by a small detour showing the time() function and then
# showing localtime in both scalar and list context.
# I cannot yet do this in Perl 6 as it seems neither localtime() nor gmtime() is implementd
# but the time() function is. It return a number such as this:

# 1247042346.34216

# just try tunning time.say;

# Afters some explanation I look at the file handlers in scalar and list context but
# and then I show slurp.

# In Perl 6

my $fh = open('data.txt', :r);


# slurp($filename) read a file to a scalar
# lines($filename)

# See S32-setting-library/IO.pod

