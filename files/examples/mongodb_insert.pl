use BSON::Document;
use MongoDB::Client;

my $name = @*ARGS.shift || die "Usage: $*PROGRAM-NAME NAME";

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

