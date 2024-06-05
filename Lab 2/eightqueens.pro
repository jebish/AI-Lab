DOMAINS
i=integer
cell=c(i,i).
list=cell*.
int_list=i*.

PREDICATES
nondeterm solution(list).
nondeterm values_from(integer,int_list).
check(cell,list).

CLAUSES
solution([]).

solution([c(X,Y)|Others]):-
	solution(Others),
	values_from(Y,[1,2,3,4,5,6,7,8]),
	check(c(X,Y),Others).

check(_,[]).
check(c(X,Y),[c(X1,Y1)|Others]):-
	Y<>Y1,
	Y1-Y<>X-X1,
	Y1-Y<>X1-X,
	check(c(X,Y),Others).

values_from(X,[X|_]).
values_from(X,[_|Tail]):-
values_from(X,Tail).

GOAL
solution([c(1,A),c(2,B),c(3,C),c(4,D),c(5,E),c(6,F),c(7,G),c(
8,H)]).