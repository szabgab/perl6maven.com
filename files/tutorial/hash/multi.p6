#!/usr/bin/env perl6
use v6;

my %xml;

%xml<person>[0] = 'Foo';
%xml<person>[1] = 'Bar';

say %xml.perl;

