incluido([], _).
incluido([X|Resto], Conjunto) :- member(X, Conjunto), incluido(Resto, Conjunto).

iguales(Conjunto1, Conjunto2) :- incluido(Conjunto1, Conjunto2), incluido(Conjunto2, Conjunto1).

union([], Conjunto, Conjunto).
union([X|Resto], Conjunto, Union) :- member(X, Conjunto), union(Resto, Conjunto, Union).
union([X|Resto], Conjunto, [X|Union]) :- not(member(X, Conjunto)), union(Resto, Conjunto, Union).

interseccion([], _, []).
interseccion([X|Resto], Conjunto, [X|Interseccion]) :- member(X, Conjunto), interseccion(Resto, Conjunto, Interseccion).
interseccion([X|Resto], Conjunto, Interseccion) :- not(member(X, Conjunto)), interseccion(Resto, Conjunto, Interseccion).

diferencia([], _, []).
diferencia([X|Resto], Conjunto, Diferencia) :- member(X, Conjunto), diferencia(Resto, Conjunto, Diferencia).
diferencia([X|Resto], Conjunto, [X|Diferencia]) :- not(member(X, Conjunto)), diferencia(Resto, Conjunto, Diferencia).
