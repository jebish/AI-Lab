DOMAINS
int_list=integer*

PREDICATES
nondeterm solution(int_list).
nondeterm values_from(integer,int_list).

CLAUSES
values_from(X,[X|_]).
values_from(X,[_|T]):-
	values_from(X,T).
	

solution([T,W,O,F,U,R]):-
	Val=[0,1,2,3,4,5,6,7,8,9],
	C3=1,
	values_from(C2,[0,1]),
	values_from(C1,[0,1]),
	values_from(T,Val),
	values_from(W,Val),
	values_from(O,Val),
	values_from(F,Val),
	values_from(U,Val),
	values_from(R,Val),
	T<>W,T<>O,T<>F,T<>U,T<>R,
	W<>O,W<>F,W<>U,W<>R,
	O<>F,O<>U,O<>R,
	F<>U,F<>R,
	U<>R,
	O+O=R+10*C1,
	W+W+C1=U+10*C2,
	T+T+C2=O+10*C3,
	F=C3.

GOAL
solution([T,W,O,F,U,R]).