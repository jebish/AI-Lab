%PROLOG code to take a list and only display 1s and 2s

DOMAINS
i=integer
list=i*

PREDICATES
nondeterm start(list).
nondeterm display(list).


CLAUSES
start(List):-
write("["),
display(List).

display([]):-
write("]"),
nl.

display([1|Tail]):-
write(1,","),
display(Tail).

display([2|Tail]):-
write(2,","),
display(Tail).

display([Head|Tail]):-
Head<>1,
Head<>2,
display(Tail).




GOAL
start([1,2,3,4,2,1,0,1,2,3]).