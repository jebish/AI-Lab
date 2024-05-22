/* Prolog code for a small family tree*/

PREDICATES
nondeterm husband(STRING,STRING).
nondeterm father(STRING,STRING).
nondeterm mother(STRING,STRING).
nondeterm son(STRING,STRING).


CLAUSES

/*Facts*/
mother("Kaushalya","Ram").
mother("Kaikai","Bharat").
mother("Sumitra","Laxmam").
mother("Sumitra","Satrughan").

husband("Dasrath","Kaushalya").
husband("Dasrath","Kaikai").
husband("Dasrath","Sumitra").

/*Rulses*/
son(A,C):-mother(C,A).
son(A,C):-husband(C,B),mother(B,A).

father(A,B):-husband(A,C),mother(C,B).


GOAL
father("Dasrath",Son).