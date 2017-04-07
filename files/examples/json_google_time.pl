use v6;
use WWW::Google::Time;
use JSON::Fast;

my %time = google-time-in 'Kiskunfélegyháza';
say to-json %time;

