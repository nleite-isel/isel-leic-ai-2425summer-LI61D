
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

/*
%//////////////////////////////////////////////////////
%
% IMPLEMENTATION #1 - list "invented" syntax 
%
first(empty, empty).

% first(X, mylist(C, Y)) :- X = C.
% Or:
first(C, mylist(C, Y)).

%?- first(X, mylist(a, mylist(b, mylist(c, empty)))).
*/

%
% IMPLEMENTATION #2 - list normal syntax 
%
first([], []).

%first(X, [C | Y]) :- X = C.
% Or:
first(C, [C | Y]).

%?- first(X, [a, b, c]).
%//////////////////////////////////////////////////////

%//////////////////////////////////////////////////////
%
% IMPLEMENTATION #1 - list "invented" syntax 
%
tail(empty, empty).

tail(R, mylist(C, R)).

%?- tail(X, mylist(a, mylist(b, mylist(c, empty)))).

%
% IMPLEMENTATION #2 - list normal syntax 
%
tail([], []).

tail(R, [C | R]).

%?- tail(X, [a, b, c]).

%//////////////////////////////////////////////////////


%//////////////////////////////////////////////////////
/*
3- Predicate del(X, Y, Z), Z is a list which contains list Y without element X
Goal1: del(b, mylist(a, mylist(b, empty)), Z).
Goal2: del(b, [a, b], Z).
*/

% C1 e C2 are needed in order for Prolog to anwser queries of type
% ?- del(empty, empty, L).

/*
%
% IMPLEMENTATION #1 - list "invented" syntax 
%
del(empty, empty, empty). % (C1)

del(empty, L, L). % (C2) 

del(C, mylist(C, R), R). % (C3)

del(X, mylist(C, R), mylist(C, R1)) :- % (C4)
	del(X, R, R1). 

%?- del(a, mylist(a, mylist(b, empty)), Z).
%?- del(b, mylist(a, mylist(b, empty)), Z).
%?- del(b, [a, b], Z). % Doesn't Work!
*/


%
% IMPLEMENTATION #2 - list normal syntax 
%
del([], [], []). % (C1)

del([], L, L). % (C2) 

del(X, [X | Tail], Tail). % (C3) 

del(X, [Y | Tail], [Y | Tail1]) :-   % (C4) 
	del( X, Tail, Tail1).


%?- del([], [], Z).
%?- del(a, [a, b], Z).
%?- del(b, [a, b], Z).
%//////////////////////////////////////////////////////


%//////////////////////////////////////////////////////
/*
4- Predicate conc(X, Y, Z) Z is a list which contains the elements of list X followed 
by the elements of list Y
Goal1: conc(mylist(1, mylist(2, empty)), mylist(a, empty), Z).
Goal2: conc([1, 2], [a], Z).
*/

/*
%
% IMPLEMENTATION #1 - list "invented" syntax 
%


% TO DO

%?- conc(empty, empty, empty).
%?- conc(mylist(1, empty), mylist(a, empty), Z).
%?- conc(mylist(1, mylist(2, empty)), mylist(a, empty), Z).
%?- conc(empty, mylist(a, empty), Z).
%?- conc(mylist(1, empty), empty, Z).
*/



%
% IMPLEMENTATION #2 - list normal syntax 
%


% TO DO

/*
?- conc([], [], []).
?- conc([1], [a], Z).
?- conc([1, 2], [a], Z).
?- conc([], [a], Z).
?- conc([1], [], Z).

*/
%//////////////////////////////////////////////////////




%//////////////////////////////////////////////////////
/*
5- Predicate reverse(X, Y) Y is a list which contains the same elements of X, 
but in the reverse order.
Goal1: reverse(X, mylist(a, mylist(b, empty))).
Goal2: reverse(X, [a, b]).
*/

%
% # IMPLEMENTATION 1
%
/*
% Implement auxiliary predicate addLast(E, L, L1):
% Succeeds if L1 is the list that results from inserting element E at the end of list L.
*/


% TO DO

%?- addLast(1, mylist(a, mylist(b, empty)), Z).



% TO DO - reverse predicate using addLast predicate


/*
?- reverse(mylist(a, mylist(b, empty)), Z).
Z = mylist(b, mylist(a, empty))

?- reverse(mylist(a, mylist(b, mylist(c, empty))), Z).
Z = mylist(c, mylist(b, mylist(a, empty)))
*/



/*
%
% IMPLEMENTATION 2
%

% Using auxiliar predicate reverse3(list_A, list_B, Accumulator).



% TO DO

%?- spy(reverse).

%?- reverse(empty, empty).
%?- reverse(mylist(1, empty), Z).
%?- reverse(mylist(1, mylist(2, empty)), Z).
%?- reverse(mylist(1, mylist(2, mylist(a, empty))), Z).
*/

%//////////////////////////////////////////////////////





























