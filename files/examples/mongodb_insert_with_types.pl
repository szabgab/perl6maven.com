use BSON::Document;
use MongoDB::Client;
use MongoDB::Database;

my $name = @*ARGS.shift || die "Usage: $*PROGRAM-NAME NAME";

my MongoDB::Client $client .= new(:uri('mongodb://'));
my MongoDB::Database $database = $client.database('myProject');

my BSON::Document $req .= new: (
  insert => 'people',
  documents => [
    BSON::Document.new((
      name => $name,
    )),
  ]
);
my BSON::Document $doc = $database.run-command($req);
