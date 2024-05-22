/*PROLOG code to find the length of list*/

DOMAINS
list_integer=integer*

PREDICATES
display(list_integer,integer).
length(list_integer,integer).



CLAUSES

display(List,L):-
	length(List,L),
	writef("The length of list is %d",L),nl.

length([],0).

length([_|T],L):-
	length(T,L1),
	L = L1+1.


GOAL
display([1,2,3,4,5,6],_).