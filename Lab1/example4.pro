DOMAINS
i=integer
list=i*.

PREDICATES
    nondeterm start.
    nondeterm read_a_list (list).
    nondeterm insert (integer, list, list).
    nondeterm display (list).

CLAUSES
    start :-
        write("Enter the numbers"), nl,
        write("Enter 0 to stop"), nl,
        read_a_list([]).

    read_a_list(List) :-
        readint(X),
            insert(X, List, NewList),
            read_a_list(NewList).
    
    insert(0,List,_):-
     write("These were the elements you inserted"), nl,
            write("["),
            display(List).

    insert(X, List, [X|List]).

    display([]) :-
        write("]"), nl.
    display([H|T]) :-
        write(H), write("\t"),
        display(T).

GOAL
    start.