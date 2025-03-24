
% From Ivan Bratko's Book p. 161

age(peter, 7).
age(ann, 5).
age(pat, 8).
age(tom, 5).


/*
?- findall(Child, age(Child, Age), List).
List = [peter, ann, pat, tom].


?- findall(Age, age(Child, Age), List).
List = [7, 5, 8, 5].

*/
