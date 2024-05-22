

sumoflist(list,integer).

sumoflist([],0).

sumoflist([H|T],S):-
    sumoflist(T,S1),
    S is H+S1.
