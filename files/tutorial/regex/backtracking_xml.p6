#!/usr/bin/env perl6
use v6;

my $good_xml = ' <person>  <fname>Foo</fname> <lname>Bar</lname>  </person> ';
my $bad_xml  = ' <person>  <fname>Foo <lname>Bar</lname> </person> ';

say $good_xml ~~ m/ \<fname\> .* {{print "1"}} \<\/fname\>  /;
say $bad_xml  ~~ m/ \<fname\> .* {{print "2"}} \<\/fname\>  /;

say $good_xml ~~ m/ \<fname\> .*? {{print "3"}} \<\/fname\>  /;
say $bad_xml ~~ m/ \<fname\> .*? {{print "4"}} \<\/fname\>  /;

say $good_xml ~~ m/ \<fname\> .*:? {{print "5"}} \<\/fname\>  /;
say $bad_xml  ~~ m/ \<fname\> .*:? {{print "6"}} \<\/fname\>  /;
