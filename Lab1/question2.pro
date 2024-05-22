DOMAINS
i=integer
list=i*

PREDICATES
sum(list,integer).


CLAUSES
sum([],0).

sum([H|T],S):-
	sum(T,S1),
	S=H+S1.

GOAL
sum([1,2,3,4,5],S).