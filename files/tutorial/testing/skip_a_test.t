use v6;
use Test;

plan 3;

ok 1, 'one';
ok 1, 'two';
if 1 {
	skip "three";
} else {
	ok 1, 'three';
}
