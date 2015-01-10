use v6;
use Bailador;

get '/' => sub {
	'<form method="POST" action="/echo"><input name="text"><input type="submit"></form>';
}

post '/echo' => sub {
    my $text = request.params<text> // '';
	my $html = 'You said (in a POST request) ';
	$html ~= $text;
	return $html;
}

baile;


