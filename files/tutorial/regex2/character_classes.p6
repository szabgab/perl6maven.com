use v6;

my $phone = "054-1234567";

# character classes are now marked like this:
# <[ ]> 
# (phone numbers can only start with numbers between 1 and 9)
for '054-1234567', '054-0123456' -> $str {
    if $str ~~ m/ ^ \d+ '-' <[123456789]> \d+ $ / {
        say "$str is a phone number";
    }
}

