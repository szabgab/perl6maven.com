#!/usr/bin/env perl6
use v6;

say "Hello";

# This is a single line comment

say #`< embedded comments > "hello world";

 #`{{
   This is a 
   multiline 
   comment
   It starts by a # followed by back-tick, an opening braces
   and end with the bracket pair
  }}


 #`<<<
   but it has a bug now
   that it cannot start on the first character of a line
 >>>
