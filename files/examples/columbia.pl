use v6;
use DBIish;


my $dbfile = 'test.db';
my $dbh = DBIish.connect("SQLite", :database($dbfile));

$dbh.do('DROP TABLE IF EXISTS astronaut');

$dbh.do(q:to/STATEMENT/);
    CREATE TABLE astronaut (
        id               INTEGER PRIMARY KEY,
        name             VARCHAR(100),
        country          VARCHAR(100),
        birthday         DATE
    )
    STATEMENT

my $sth_insert = $dbh.prepare(q:to/STATEMENT/);
    INSERT INTO astronaut (name, country, birthday)
    VALUES ( ?, ?, ? )
    STATEMENT

my @people =
		('Rick D. Husband',     'USA',    'July 12, 1957'),
		('William C. McCool',   'USA',    'September 23, 1961'),
		('Michael P. Anderson', 'USA',    'December 25, 1959'),
		('Kalpana Chawla',      'India',  'July 1, 1961'),
		('David M. Brown',      'USA',    'April 16, 1956'),
		('Laurel Clark',        'USA',    'March 10, 1961'),
		('Ilan Ramon',          'Israel', 'June 20, 1954'),
;

for @people -> $p {
	$sth_insert.execute(|$p);
}

my $sth_select = $dbh.prepare('SELECT * FROM astronaut');

$sth_select.execute();

my @rows = $sth_select.allrows();
say @rows.elems;
for @rows -> $r {
	say $r.perl;
}

$sth_select.finish;

$dbh.dispose;

