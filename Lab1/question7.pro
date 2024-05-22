%PROLOG Code to delete a given element from the list

DOMAINS
i=integer
list=i*


PREDICATES
nondeterm start(list,integer,list).
nondeterm delete(list,integer,list).



CLAUSES

start(List,Num,New_list):-
	delete(List,Num,New_list).

delete([],_,[]).
delete([Num|T],Num,Result):-delete(T,Num,Result).
delete([H|T],Num,[H|Result]):-H<>Num,
delete(T,Num,Result).
	

GOAL
start([1,2,3,1,2,5],1,Result).