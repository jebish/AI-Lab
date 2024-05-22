%PROLOG code to append two lists

DOMAINS
i=integer
list=i*


PREDICATES
append(list,list,list).


CLAUSES
append([],Y,Y).
append([H|T],Y,[H|A_T]):-
append(T,Y,A_T).


GOAL
append([1,2],[3,4],Z);
append([4,5],[],Z);
append([],[5,6],Z).