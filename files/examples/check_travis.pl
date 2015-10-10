use v6;

use LWP::Simple;

my $html = LWP::Simple.get('http://modules.perl6.org');

my $urls = 0;
my $missing = 0;
for $html.split(/\n/) -> $line {
	# Capturing ttps://github.com/tadzik/Bailador/
	if $line ~~ /\"(https\:\/\/github.com\/<[\w\-]>+\/<[\w\-]>+)\/?\"/ {
		my $url = $0;
		$urls++;
		
		# Creating https://github.com/tadzik/Bailador/blob/master/.travis.yml
		my $travis_yml_url = "$url/blob/master/.travis.yml";
		#say $travis_yml_url;

		# my $travis_yml_html = LWP::Simple.get($travis_yml_url);
		# say $travis_yml_html
		# did not work: https://github.com/cosimo/perl6-lwp-simple/issues/61
		
		my $proc = run 'curl', '-s', $travis_yml_url, :out;
		my $out = $proc.out.slurp-rest;
		if $out eq '{"error":"Not Found"}' {
			say "Missing Travis.yml $url";
			$missing++;
		}
	}
}
say "Total: $urls  Missing: $missing";

