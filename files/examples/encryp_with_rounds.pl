use v6;
use Crypt::Libcrypt; 

my $password = 'secret';

say encrypt(0);
say encrypt(1);
say encrypt(42);
say encrypt(1000);
say encrypt(50000);
say encrypt(200000);
say encrypt(1000000);

sub encrypt($rounds) {
    say "\n$rounds";
    my $salt = '$6$abcdefghIJKLMOPQ';
    if $rounds {
        $salt = '$6$rounds=' ~ $rounds ~ '$abcdefghIJKLMOPQ';
    }
    say $salt;
    my $start = now;
    my $encripted = crypt($password, $salt);
    my $end = now;
    say "Elapsed time: ", ($end-$start);
    return $encripted;
}

