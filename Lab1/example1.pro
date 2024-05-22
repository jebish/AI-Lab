/* Prolog code to find the bigger number*/

PREDICATES
nondeterm bigger(integer,integer,integer).

CLAUSES
bigger(X,Y,Z):-X>=Y,Z=X,write("The bigger number is ",Z).
bigger(X,Y,Z):-X<Y,Z=Y.

GOAL
bigger(33,34,Z).