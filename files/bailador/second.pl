use v6;
use Bailador;

get '/' => sub {
    "hello world"
}

get '/hello/:first/:family' => sub ($fname, $lname) {
    "Hello $fname! And hi $lname"
}


baile;

