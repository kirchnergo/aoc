/// ONELINE
sum value each a where (1 rotate a) = a: first read0 `:../input/01.txt
sum value each a where a = div[count a; 2] rotate a: first read0 `:../input/01.txt

/// EXPLANATION

/ show current directory
\cd 
/ change to appropriate dir 
\cd aoc/2017/q
/ read input
inp: read0 `:../input/01.txt
/ show it
inp
type inp
/ take the first entry
a: first inp
type a

/// PART 1

/ rotate to the left
1 rotate a
/ positions in a, which are equal to their right neighbour
(1 rotate a) = a
/ their indices
a where (1 rotate a) = a
/ as a list of numbers
value each a where (1 rotate a) = a
/ theis sum
sol1: sum value each a where (1 rotate a) = a
/ SOLUTION for part 1
sol1
// -> 1228

// alternative
\t:1000 sum value each a where (1 rotate a)=a
// -> 152
\t:1000 sum "J"$/:a where (1 rotate a)=a
// -> 36

/// PART 2
c: count a
h: c div 2
h rotate a
sol2: sum value each a where a = div[count a; 2] rotate a
// SOLUTION part 2
sol2
// -> 1238