use v6;
use Test;

sub rdir($path = '.') {
	my @things = dir($path).map({ $_.basename });
	my @files = @things.grep({ "$path/$_".IO.f });
	for @things.grep({ "$path/$_".IO.d }) -> $d {
		@files.push( rdir("$path/$d").map({ "$d/$_" }) );
	}
	return @files;
}

my %SKIP = (
	'tutorial/intro/hello_world_bare.p6' => 1,
);

my @files = rdir('files').grep( -> $f { substr($f, *-3) eq '.p6' }).grep( -> $f { not %SKIP{$f} });

plan @files.elems;

for @files -> $file {
	#say $file;
	#next if substr($file, *-3) ne '.p6';
	#next if $file eq 'tutorial/intro/hello_world_bare.p6';

	my $path = "files/$file";
	my ($found) = open($path, :r).lines.grep(/use<space>v6\;/);
	# TODO shall we check if the first line is a proper sh-bang?
	#say $file;
	#say $found;
	ok $found, "File '$path' has 'use v6'";

	my $out = QX("perl6 -c $path");
	is $out.chomp, 'Syntax OK', "Syntax of '$path' is ok";
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

