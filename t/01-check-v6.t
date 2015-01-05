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

my %SKIP_SYNTAX = (
	'files/tutorial/modules/export.p6' => 1,
	'files/tutorial/other/parse.p6'    => 1,
	'files/tutorial/regex2/match_several_words2.p6' => 1,
	'files/tutorial/regex2/capture_with_quantifier.p6' => 1,
	'files/tutorial/other/perldoc.p6' => 1,
	'files/tutorial/regex/ini_processor.p6' => 1,
	'files/tutorial/subroutines/optional_parameters.p6' => 1,
	'files/tutorial/regex2/add.p6' => 1,
);

my @files = rdir('files').grep( -> $f { substr($f, *-3) eq '.p6' }).grep( -> $f { not %SKIP{$f} });

plan 2 * @files.elems;

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

	if %SKIP_SYNTAX{$path} {
		skip "Syntax of '$path'";
	} else {
		my $out = QX("$*EXECUTABLE -c $path");
		is $out.chomp, 'Syntax OK', "Syntax of '$path' is ok";
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

