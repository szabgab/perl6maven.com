use v6;

BEGIN {
	push @*INC, 'examples/modules';
}

use A;

foo();

