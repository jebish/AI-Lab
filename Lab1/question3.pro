%PROLOG code to find the length of a list

DOMAINS
i=integer
list=i*

PREDICATES
length(list,integer).

CLAUSES
length([],0).
length([_|T],L):-
	length(T,L1),
	L=L1+1.

GOAL
length([34,23,56,12,23,34],L).