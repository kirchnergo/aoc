/// ONELINE

/// EXPLANATION
\cd 
\cd aoc/2017/q
i: read0 `:../input/03.txt
i
type i
a: value first i
a

/// PART 1
osq: { x*x:1+2*x }
osq til 10
lvl:{ { x+1 }/[{[m;x] m > osq x}[x]; 0] }
lvl each 36 100
s:{ l:lvl x; l + abs l - (x - osq l - 1) mod floor 0.25* (osq l) - osq l - 1 }
s 36
/ SOLUTION for part 1
s a
/ -> 480

/// PART 2
/ bootstrap
g: (enlist 0 0)!enlist 1 
/ move east
p: 1 0
while[ a > g[p]: sum (n: g p +/: (0 1; 1 0; 0 -1; -1 0)), g p +/: (1 1; 1 -1; -1 -1 ;-1 1);
  $[(d: "b" $ 0^n) in (0001b; 0011b);
    p+:  0  1;  / move north
    d in (0010b; 0110b);
    p+: -1  0; / move west
    d in (0100b; 1100b);
    p+:  0 -1; / move south
    p+:  1  0   / move east
    ]
  ];
/ SOLUTION for part 2
g p
/ -> 349975
g