use v6;
use lib '/home/gabor/work/Bailador/lib';
use Bailador;

get '/' => sub {
	'<form method="GET"  action="/echo"><input name="text"><input type="submit"></form>';
}

get '/echo' => sub {
    return 'You said (in a GET request) ' ~ (request.params<text> // '');
}

baile;

