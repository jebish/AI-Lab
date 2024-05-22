%PROLOG code to find HCF of two numbers

PREDICATES
nondeterm hcf(integer,integer,integer).

CLAUSES
hcf(0,Y,Y):-!.
hcf(X,0,X):-!.
hcf(X,Y,Z):-X>Y,!,hcf(Y,X,Z).
hcf(X,Y,Z):-R=Y mod X,hcf(X,R,Z).


GOAL
hcf(55,45,Z).