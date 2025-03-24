
% Exercise 5.1, p. 134
%
% Let a program be:

p(1).

p(2) :- !.

p(3).


/*
Write all Prolog's answers to the following questions:

(a) ?- p(X).

(b) ?- p(X), p(Y).

(c) ?- p(X), !, p(Y).


?- p(X).
X = 1 ;
X = 2.

?- p(X), p(Y).
X = Y, Y = 1 ;
X = 1,
Y = 2 ;
X = 2,
Y = 1 ;
X = Y, Y = 2.

?- p(X), !, p(Y).
X = Y, Y = 1 ;
X = 1,
Y = 2.


*/











