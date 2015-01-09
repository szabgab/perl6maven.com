use v6;

my @things = dir('.');
for @things -> $t {
	say $t.Str;
	say $t.w;
	say $t.r;
	say $t.f;  # file ?
	if $t.f {
		say $t.s;
	} else {
		say '--';
	}
}
