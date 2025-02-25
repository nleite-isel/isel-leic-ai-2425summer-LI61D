/*
Standard Prolog Notation

?- [a,b,c] = .(a, .(b, .(c, []))).
yes

?- List1 = [a,b,c], List2 = .(a, .(b, .(c, []))).
List1 = [a,b,c]
List2 = [a,b,c]


?- Hobbies1 = .(tennis, .(music, [])),
   Hobbies2 = [skiing, food],
   L = [ ann, Hobbies1, tom, Hobbies2].

Hobbies1 = [tennis, music]
Hobbies2 = [skiing, food)
L = [ann, [tennis, music], tom, [skiing,food]]

*/


/*
SWI-Prolog Notation

?- [a,b,c] = '[|]'(a, '[|]'(b, '[|]'(c, []))).
yes

?- List1 = [a,b,c], List2 = '[|]'( a, '[|]'( b, '[|]'(c, []))).
List1 = [a,b,c]
List2 = [a,b,c]


?- Hobbies1 = '[|]'(tennis, '[|]'(music, [])),
   Hobbies2 = [skiing, food],
   L = [ann, Hobbies1, tom, Hobbies2].

Hobbies1 = [tennis, music]
Hobbies2 = [skiing, food)
L = [ann, [tennis, music], tom, [skiing,food]]
*/


%///////////////////////////////

?- L1 = [a, b, c], L2 = [a | [b,c]], L3 = [a, b | [c]], L4 = [a, b, c | []].






























