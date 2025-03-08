%
% Exercises about Prolog lists
%

% Predicate first(E, L):
% Succeeds if E is the first element of list L.

first(C, [C|_]).

% Predicate second(E, L):
% Succeeds if E is the second element of list L.

second(X, [_, X|_]).

% Predicate third(E, L):
% Succeeds if E is the third element of list L.

third(X, [_, _, X|_]).

% Predicate firstThree(P, S, T, R, L):
% Succeeds if P, S, T, and R are, the first, second, third elements and the tail 
% of list L, respectively.

firstThree(P, S, T, R, [P, S, T|R]).

% Predicate tail(R, L):
% Succeeds if R is the tail of list L.

tail(R, [_|R]).

% Predicate addLast(E, L, L1):
% Succeeds if L1 is the list that results in the insertion of element E at the end of list L.

addLast(E, [], [E]).
addLast(E, [Y|R], [Y|R1]) :- 
	addLast(E, R, R1).


% Predicate reverse(L, Li):
% Succeeds if Li is the reversed list of list L.

reverse([], []).
reverse([X|L], L1) :- 
	reverse(L, L2), 
	addLast(X, L2, L1).

%///////////////////////////////

% 1. Predicate conc(L1, L2, L):
% Succeeds if L is the list that results in the concatenation of elements 
% of list L1 with elements of list L2.
%
% ?- conc([1,2,3], [a, b], Z).
% Z = [1, 2, 3, a, b]

% 2. Predicate member(E, L): Succeeds if element E belongs to list L.

% 3. New version of Predicate member: memberV1(E, L), made using
% Predicate conc/3.

% 4. Predicate insertFront(E, L, L1):
% Succeeds if L1 is the list that results in the insertion of element E 
at front of list L.

% 5. Predicate insert(E, L, L1):
% Succeeds if L1 is the list that results in the insertion of element E 
% in an arbitrary position in list L.
 
% 6. New version of Predicate member: memberV2(E, L), made using
% predicate insert/3.

% 7. Predicate remove(E, L, L1):
% Succeeds if L1 is the list that results in the removal of element E 
% of list L (in any position).

% 8. New version of Predicate remove, made using predicate insert/3.

% 9. New version of Predicate insert/3 made using predicate remove/3.

% 10. Predicate sublist(S, L):
% Succeeds if S is a sublist of L.

% 11. Predicate permutation(L, Lp):
% Succeeds if Lp is a permutation of L.
% 11.1 - Implementation 1: made using predicate insert/3
% 11.2 - Implementation 2: made using predicate remove/3

%?- findall(P, permutation([1,2,3], P), L).
% L = [[1, 2, 3], [2, 1, 3], [2, 3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1]].






























