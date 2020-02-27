/*familia.pl*/

/* Hechos */
hombre(adam).
hombre(peter).
hombre(paul).
mujer(mary).
mujer(eve).

ascendiente(adam,peter).
ascendiente(eve,peter).
ascendiente(adam,paul).
ascendiente(mary,paul).

/* predicados */
padre(F,C) :- hombre(F), ascendiente(F,C).
madre(M,C) :- mujer(M), ascendiente(M,C).

es_padre(F) :- padre(F,_).
es_madre(M) :- madre(M,_).

hijo(S,X) :- hombre(S), ascendiente(X,S).
hija(D,X) :- mujer(D), ascendiente(X,D).

hermanos(A,B) :- ascendiente(P,A), ascendiente(P,B),A\=B.

tio(U,N) :- hombre(U), hermanos(U,P), ascendiente(P,N).
tia(A,N) :- mujer(A), hermanos(A,P), ascendiente(P,N).

descendiente(D,A) :- ascendiente(A,D).
descendiente(D,A) :- ascendiente(P,D), descendiente(P,A).