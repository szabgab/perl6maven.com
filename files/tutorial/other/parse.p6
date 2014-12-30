use v6;

grammar MyMath {
    rule TOP { ^ <expression> $ }
    rule expression { < operand> <operator> <operand> $ }
    #rule operator { <[+\-]> }
    proto token operator { }
    multi token operator:sym<+>  { <sym> }
    multi token operator:sym<->  { <sym> }

    token operand { \d+ }
}

say MyMath.parse("3 + 2").perl;
