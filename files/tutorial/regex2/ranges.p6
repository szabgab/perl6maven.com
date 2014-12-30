
use v6;

for '054-1234567', '054-0123456' -> $str {
    if $str ~~ m/ ^ \d+ '-' <[1..9]> \d+ $ / {
        say "$str is a phone number (using range)";
    }
}


