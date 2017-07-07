use MongoDB::Client;

my $client = MongoDB::Client.new(:uri('mongodb://'));
my $database = $client.database('myProject');
my $collection = $database.collection('people');
my $cursor = $collection.find();

while $cursor.fetch -> $d {
  say "Name: ", $d<name>;
}
