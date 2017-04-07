use v6;
use Crypt::Libcrypt; 

my $password = 'secret';

my $encripted = '$6$abcdefghIJKLMOPQ$k7/p0miPUkmsxrxWKDuP5Apnb6MZ6.vfG6xulRYIRCnRtDXXgf5rA7M3yb5TeUdg1I8Hxux6BDbsf.ZABF/re.';

if crypt($password, $encripted) eq $encripted {
    say 'Verified';
}

my $salt = $encripted.substr(0, $encripted.index('$', 3));
say $salt;
if crypt($password, $salt) eq $encripted {
    say 'Verified';
}

