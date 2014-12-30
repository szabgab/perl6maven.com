
use v6;

for '054-1234567', '054-12345678' , '054-1234', '08-1234567' -> $str {
    if $str ~~ m/ ^ \d ** 2..3 '-' <+digit - [0]> \d ** 6 $ / {
        say "$str is a phone number (2-3 digits, non-zero + 6 digits)";
    }
}


