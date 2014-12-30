use v6;

# Let's see something else
my $apache = qq{127.0.0.1 - - [10/Apr/2007:10:39:11 +0300] "GET / HTTP/1.1" 500 606 "-" "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.3) Gecko/20061201 Firefox/2.0.0.3 (Ubuntu-feisty)"};

my regex ip   { \d+\.\d+\.\d+\.\d+ }
my regex date { \[ .*? \] }

if $apache ~~ m/ <&ip> \s+ \- \s+ \- \s+ <&date> \s+ \"GET / {
    say "Apache: $/";
}


# use the :sigspace modifier or in short :s

if $apache ~~ m/:s <&ip> \- \- <&date> \"GET / {
    say "Apache: $/";
}

my regex apache { :s <&ip> \- \- <&date> \"GET }
if $apache ~~ m/ <&apache> / {
    say "Apache regex: $/";
}

my rule apache_rulez { <&ip> \- \- <&date> \"GET }
if $apache ~~ m/ <&apache_rulez> / {
    say "Apache rule: $/";
}
