/*
Assume that given facts in the form: parent(name1, name2) (name1 is the father/mother of name2).

Define predicate brother(X, Y) which succeeds if X and Y are brothers.
Define predicate cousin(X, Y) which succeeds if  X and Y are cousins.
Define predicate grandson(X, Y) which succeeds if X is grandson of Y.
Define predicate descendent(X, Y) which succeeds if X is a descendent of Y.

Consider the following genealogic tree:
   parent(jose, maria).   % 1                 
   parent(jose, pedro).   % 2
   parent(maria, luis).   % 3
   parent(maria, afonso). % 4
   parent(pedro, ana).    % 5

whose graphical representation is:
        jose
        /   \
      maria  pedro
     /   \        \
    luis  afonso   ana


For the following queries, indicate which answers, and in what order, are produced for your definitions:
 
?- brother(X, Y).
?- cousin(X, Y).
?- grandson(X, Y).
?- descendent(X, Y).

You may use predicate not/1.
*/

% Facts
parent(jose, maria).   
parent(jose, pedro).   
parent(maria, luis).   
parent(maria, afonso). 
parent(pedro, ana). 

% Rules

% Succeedes if X and Y are brothers
brother(X, Y) :- parent(Z, X), parent(Z, Y), not(X = Y).

% Succeedes if X and Y are cousins
cousin(X, Y) :- parent(L, X), parent(P, Y), brother(L, P).

% Succeedes if X is a granson of Y 
grandson(X, Y) :- parent(Y, P), parent(P, X).

% Succeedes if X is a descendent of Y 
descendent(X, Y) :- parent(Y, X).
descendent(X, Y) :- parent(Z, X), descendent(Z, Y).


/*
?- brother(X, Y).
?- cousin(X, Y).
?- grandson(X, Y).
?- descendent(X, Y).
*/























