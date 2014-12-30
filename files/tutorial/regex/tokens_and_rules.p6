#!/usr/bin/env perl6
use v6;

my regex url_regex {
    <protocol_regex> {{print 1}} \:\/\/  \w+ \. \w ** 2..3
}
my regex protocol_regex {
    http | file
}

# same as the regex except it will not backtrack
#token url_token {
#}
#say 'http://wwww.com' ~~ m/ <url_regex> /;
#say 'file://wwww' ~~ m/ <url_regex> /;

my regex x_regex { <alpha>+ {{print 1}} ' ' <digit> }
say 'abcdef 789' ~~ m/ <x_regex> /;
say 'abcdef' ~~ m/ <x_regex> /;

my regex y_regex { <alpha>+: {{print 2}} ' ' <digit> }
say 'abcdef 789' ~~ m/ <y_regex> /;
say 'abcdef' ~~ m/ <y_regex> /;

my token x_token { <alpha>+ {{print 3}} ' ' <digit> }
say 'abcdef 789' ~~ m/ <x_token> /;
say 'abcdef' ~~ m/ <x_token> /;


my rule x_rule {<alpha>+{{print 4}} <digit>}
say 'abcdef 789' ~~ m/ <x_rule> /;
say 'abcdef' ~~ m/ <x_rule> /;

