
use v6;

for '054-1234567', '054-0123456' -> $str {
    if $str ~~ m/ ^ \d+ '-' <+digit - [0]> \d+ $ / {
        say "$str is a phone number (using character class arithmetic)";
    }
}

#  <[\d] - [0]>  will also work...

