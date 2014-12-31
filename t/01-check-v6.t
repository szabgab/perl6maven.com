
use v6;

sub rdir($path = '.') {
	my @things = dir($path).map({ $_.basename });
	my @files = @things.grep({ "$path/$_".IO.f });
	for @things.grep({ "$path/$_".IO.d }) -> $d {
		@files.push( rdir("$path/$d").map({ "$d/$_" }) );
	}
	return @files;
}

for rdir('files') -> $file {
	#say $file;
	next if substr($file, *-3) ne '.p6';
	next if $file eq 'tutorial/intro/hello_world_bare.p6';

	my $path = "files/$file";
	my ($found) = open($path, :r).lines.grep(/use<space>v6\;/);
	# TODO shall we check if the first line is a proper sh-bang?
	#say $file;
	#say $found;
	if not $found {
		say "File '$path' missing 'use v6'";
	}
}


#sub xdir($dir = '.') {
#    my @todo = $dir.path;
	#say @todo.perl;

#    while @todo {
#        for @todo.pop.dir -> $path {
#            say $path.Str;
#            @todo.push: $path if $path.d;
#        }
#    }
#}

