
/*
Exercises

Considering the definition of a list in Prolog, write Prolog programs for the following 
predicates and make the deduction of the indicated goals.

1- Predicate first(X, Y) where X is the head of list Y
Goal1: first(X, mylist(a, mylist(b, mylist(c, empty)))). % An "invented" syntax for lists
Goal2: first(X, [a, b, c]).

2- Predicate tail(X, Y) where X is the tail of list Y
Goal1: tail(X, mylist(a, mylist(b, mylist(c, empty)))). % An "invented" syntax for lists
Goal2: tail(X, [a, b, c]).

3- Predicate del(X, Y, Z), Z is a list which contains list Y without element X
Goal1: del(b, mylist(a, mylist(b, empty)), Z).
Goal2: del(b, [a, b], Z).

4- Predicate conc(X, Y, Z) Z is a list which contains the elements of list X followed 
by the elements of list Y
Goal1: conc(mylist(1, mylist(2, empty)), mylist(a, empty), Z).
Goal2: conc([1, 2], [a], Z).

5- Predicate reverse(X, Y) Y is a list which contains the same elements of X, 
but in the reverse order.
Goal1: reverse(X, mylist(a, mylist(b, empty))).
Goal2: reverse(X, [a, b]).

*/


































