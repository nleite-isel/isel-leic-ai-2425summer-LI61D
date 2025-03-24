

%/////////////////////////////////////////////////////
% Auxiliary predicates
%

del(X, [X | Tail], Tail).

del(X, [Y | Tail], [Y | Tail1]) :-
   del(X, Tail, Tail1).


insert(X, List, BiggerList) :-
   del(X, BiggerList, List).
   
%/////////////////////////////////////////////////////   

% 11. Predicate permutation(L, Lp):
% Succeeds if Lp is a permutation of L.
% 11.1 - Implementation 1: made using predicate insert/3
% 11.2 - Implementation 2: made using predicate del/3

%
% Implementation #1
%
permutation([],[]).

permutation([X | L], P) :-
   permutation(L, L1),
   insert(X, L1, P).



%
% Implementation #2
%
permutation2([],[]).

permutation2(L, [X | P]) :-
   del(X, L, L1),
   permutation2(L1, P).


/*
?- permutation([a,b,c], P).
P = [a,b,c];
P = [a,c,b];
P = [b,a,c];	
...


?- permutation( [red,blue,green], P).	
P = [red, blue, green];
P = [red, green, blue];
P = [blue, red, green];
P = [blue, green, red];
P = [green, red, blue];
P = [green, blue, red];
no


%% -- see remarks on slide 29

% Spy point on permutation1/2
?- spy(permutation/2).                                                


?- permutation(L, [a,b,c]).

% Spy point on permutation2/2
?- spy(permutation2/2).                                                


?- permutation2(L, [a,b,c]).

*/

%?- findall(P, permutation([1,2,3], P), L).
% L = [[1, 2, 3], [2, 1, 3], [2, 3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1]].






















