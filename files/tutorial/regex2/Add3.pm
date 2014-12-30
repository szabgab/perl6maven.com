grammar Add3 {
    rule TOP { ^ <math> $ }
    rule math { 
        <operand>
        [ <operator> || [ \D { die "Invalid operator" } ] || {die "missing operator"} ] 
        [ <operand> || { die "Missing second operand" } ]
        
        [ \S { die "Invalid value after the second operand" } ]?
    }
    token operand { \d+ }
    proto token operator { <...> };
    token operator:sym<\+>    { '+' };
    token operator:sym<\*>    { '*' };
}

