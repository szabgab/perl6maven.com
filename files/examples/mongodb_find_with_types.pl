use BSON::Document;
use MongoDB::Client;
use MongoDB::Database;
use MongoDB::Collection;
use MongoDB::Cursor;

my MongoDB::Client $client .= new(:uri('mongodb://'));
my MongoDB::Database $database = $client.database('myProject');

my MongoDB::Collection $collection = $database.collection('people');
my MongoDB::Cursor $cursor = $collection.find();

while $cursor.fetch -> BSON::Document $d {
  say "Name: ", $d<name>;
}
