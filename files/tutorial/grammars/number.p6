use v6;

grammar A {
    token TOP               { . };
}

A.parse('');
say $/;  #nothing

A.parse('abc');
say $/;  # a

grammar B {
    token TOP  { <number> };

    token number {
        \d+  \.  \d+
    };
}

B.parse('abc');
say $/;

B.parse(1.2);
say $/;           # 1.2
say $/<number>;   # 1.2

B.parse(1);
say $/;


grammar C {
    token TOP  { <number> };

    token number {
        \d+  [\.  \d+]?
    };
}

C.parse(1);
say $/;
C.parse(2.1);
say $/;

C.parse('3');
say $/;
C.parse('x4y');
say $/;

grammar D {
    token TOP  { ^ <number> $ };

    token number {
        \d+  [\.  \d+]?
    };
}

D.parse(1);
say $/;
D.parse(3.4);
say $/;
D.parse('x5y');
say $/;

grammar E {
    token TOP  { ^ <number> $ };

    token number {
        <integer>  <fraction>?

    }
    token integer  { \d+ }
    token fraction {\.  \d+}
}

say 'E';
E.parse(3.6);
say $/;
say $/<number>;
say $/<number><integer>;
say $/<number><fraction>;


