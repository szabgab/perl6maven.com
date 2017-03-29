use v6;

my @chars = 'a' ... 'z', 'A' ... 'Z', '0' ... '9';
say @chars;
my $salt = @chars.pick(2).join('');
say $salt;

