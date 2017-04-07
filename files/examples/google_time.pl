use v6;
use WWW::Google::Time;

my %time = google-time-in 'Kiskunfélegyháza';
say "Time in %time<where> is %time<str>";


say qq:to/END/
------------------------------
Location:         %time<where>
Time:             %time<time>
Time zone:        %time<tz>
Day of the week:  %time<week-day>
Month:            %time<month>
Day of the month: %time<month-day>
Year:             %time<year>
Full time string: %time<str>
DateTime object:  %time<DateTime>
END

