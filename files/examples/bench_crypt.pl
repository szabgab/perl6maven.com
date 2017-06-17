use v6;
use Crypt::Libcrypt; 
use Bench;

my $password = 'secret';
my $b = Bench.new;

$b.timethese(100, {
    'none' => sub {
        my $encripted = crypt($password, '$6$abcdefghIJKLMOPQ');
    },
    '200000' => sub {
        my $encripted = crypt($password, '$6$rounds=200000$abcdefghIJKLMOPQ');
    },
    '1000000' => sub {
        my $encripted = crypt($password, '$6$rounds=1000000$abcdefghIJKLMOPQ');
    },
});

