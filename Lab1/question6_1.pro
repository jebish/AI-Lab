%PROLOG code to find solution list of only 1 and 2s

DOMAINS
i=integer
list=i*

PREDICATES
nondeterm solution(list,list).


CLAUSES

solution([],[]).
solution([1|Tail],[1|Result]):-
	solution(Tail,Result),!.
solution([2|Tail],[2|Result]):-
	solution(Tail,Result),!.
solution([_|Tail],Result):-
	solution(Tail,Result),!.

GOAL
solution([2,3,1,2,4,5,2,3,1,0,3,2,1],Z).