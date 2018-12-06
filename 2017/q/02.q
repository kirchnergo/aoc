/// ONELINE
sum { (max x) - min x } each a: "J" $ "\t" vs ' read0 `:../input/02.txt
sum { (%) . (x first where 2 = sum a; x first where 2 = sum each a: 0 = x mod/: x) } each a: "J" $ "\t" vs ' read0 `:../input/02.txt

/// EXPLANATION
\cd 
\cd aoc/2017/q
inp: read0 `:../input/02.txt
inp
type inp
a: "J" $ "\t" vs ' inp
a

/// PART 1
s1: sum { (max x) - min x } each a
s1
/ -> 44216

/// PART 2
s2: sum { (%) . (x first where 2 = sum a; x first where 2 = sum each a: 0 = x mod/: x) } each a
s2
/ -> 320
// alternative
sum (%) . ' {x first where 0 = (mod) . ' x: raze x ,/: ' x except/: x} each a