
use v6;

grammar A {
    token TOP               { ^ <ini> $ };
    token ini {
        <comment>*
    }
    token comment {
        ^^ <ws> [ '#' \N* ]? $$ \n?
    }
}


A.parse('# first comment');
say $/;   #    # first comment

A.parse("# second comment\n");
say $/;   #    # second comment

A.parse("   # indented comment\n");
say $/;   #    # indented comment

A.parse("#nospace comment\n");
say $/;   #    #nospace comment

A.parse("     \n"); # empty line
say "'$/'";    #    '     '

A.parse("# one comment\n# comment 2");
say $/;   
            # one comment
            # comment 2

A.parse("");
say "'$/'";    # ''

my $file_1 = "
# comment
# more comment
";
A.parse($file_1);
say $/;
        # comment
        # more comment


say 'B-----';

grammar B {
    token TOP               { ^ <ini> $ };
    token ini {
        <comment>* <section>* <comment>*
    }
    token comment {
        ^^ <ws> [ '#' \N* ]? $$ \n? 
#        {{ print "comment\n" }}
    }
  
    token section {
        <header> [<comment>* <entry>]*
    }
    token header {
        ^^ \[ <-[\]]>* \] $$ \n?
    }
    token entry {
        ^^ <key> <ws> '=' <ws> <value> $$ \n?
        {{ print "entry\n" }}
    }
    token key {
        <alnum>+
    }
    token value {
        \N+
    }
}

B.parse('');
say "B: '$/'";


# [<comment>* <entry>*]*
# \[  <alnum>+ \]
my $file_2 = "
# comment before
[apple]
# some comment
color = red
shape = round

# comment in the apple

[banana]
";
my $file_3 = "



color = yellow

  # comment in banana

shape = curve
";

B.parse($file_2);
say $/;

