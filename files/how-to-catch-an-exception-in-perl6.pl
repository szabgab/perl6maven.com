use v6;

my $x = 10;
my $y = 0;

my $z = $x / $y;

my $exception;
{
	say $z;
	#my $u = 1+$z;
	# BUG?  $z++ and my $u = $z+1 did NOT trigger the exception, my $u = $z+$z did.
	CATCH {
		default {
			$exception = $_;
		}
	}
}

if ($exception) {
	say "There was an exception: $exception";
}

say "still running";

