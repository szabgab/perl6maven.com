#!/usr/bin/env perl6
use v6;


say 'aaa' ~~ m/a/;  # a
say 'aaa' ~~ m/aa/; # aa

say 'bab'   ~~ m/b a a b /;  # no match
say 'baab'  ~~ m/b a a b /;  # baab
say 'baaab' ~~ m/b a a b /;  # no match

say 'bb' ~~ m/b  a+ b /;     # no match
say 'bab' ~~ m/b  a+ b /;    # bab
say 'baaab' ~~ m/b  a+ b /;  # baaab

say 'baaab' ~~ m/b  a* b /;  # baaab
say 'baaaab' ~~ m/b  a* b /; # baaaab

say 'baab'   ~~ m/b a ** 3 b/; # no match
say 'baaab'  ~~ m/b a ** 3 b/; # baaab  
say 'baaaab' ~~ m/b a ** 3 b/; # no match


say 'range:';
say 'xyx'    ~~ m/x y ** 2..3 x/; # no match
say 'xyyx'   ~~ m/x y ** 2..3 x/; # xyyyx
say 'xyyyx'  ~~ m/x y ** 2..3 x/; # xyyyx
say 'xyyyyx' ~~ m/x y ** 2..3 x/; # no match
