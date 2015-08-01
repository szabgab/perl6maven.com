unit class Demo;
use Bailador;
 
my $version = '0.01';

get '/' => sub {
    template 'index.tt', { version => $version, date => time }
}

