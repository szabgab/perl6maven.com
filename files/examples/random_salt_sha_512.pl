use v6;

my @chars = 'a' ... 'z', 'A' ... 'Z', '0' ... '9';
say @chars;
my $salt = '$6$' ~ @chars.pick(16).join('');
say $salt;

