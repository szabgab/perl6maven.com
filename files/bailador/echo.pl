use v6;
use Bailador;

get '/echo' => sub {
	'<form method="POST"><input name="text"><input type="submit"></form>';
}

post '/echo' => sub {
    my $text = request.params<text>;
	my $html = "Hi ";
	$html ~= $text;
	return $html;
}


baile;

