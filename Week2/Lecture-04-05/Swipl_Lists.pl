/*

%print(L) :- 
print([Head | Tail]) :-
	write(Head), nl,
	write(Tail), nl.	 

*/

print([]).


print([Head | Tail]) :-
	write(Head), nl,
	print(Tail).	 



% print([1,2,3]).
% ?- X = [1,2,3], Y = '[|]'(1, '[|]'(2, '[|]'(3, []))).


