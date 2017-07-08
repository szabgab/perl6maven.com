use BSON::Document;
use MongoDB::Client;

sub MAIN($name) {
    my $client = MongoDB::Client.new(:uri('mongodb://'));
    my $database = $client.database('myProject');
    
    my $req = BSON::Document.new: (
      insert => 'people',
      documents => [
        ( 
          name => $name,
        ),
      ]
    );
    $database.run-command($req);
}

