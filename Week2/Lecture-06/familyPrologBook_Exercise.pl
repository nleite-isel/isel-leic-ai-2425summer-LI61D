
% Figure 1.8 The family program.

parent(pam, bob).   % Pam is a parent of Bob
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(pam). % Pam is female
male(tom).   % Tom is male
male(bob).
female(liz).
female(ann).
female(pat).
male(jim).

mother(X, Y) :- ...         % X is the mother of Y if

grandparent(X, Z) :- ...    % X is a grandparent of Z if

sister(X, Y) :- ...         % X is a sister of Y if

ancestor(X, Z) :- ...       % X is ancestor of Z if


/* 
To execute:
swipl familyPrologBook.pl

?- ancestor(X, ann).
X = bob ;
X = pam ;
X = tom ;
false.

?- ancestor(tom, pat).
true.

?- ancestor(tom, X).
X = bob ;
X = liz ;
X = ann ;
X = pat ;
X = jim ;
false.

*/








