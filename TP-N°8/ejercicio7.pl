concatenar([], L, L).
concatenar([X|Xs], Y, [X|Zs]) :- concatenar(Xs, Y, Zs).

pertenencia(Elemento, [Elemento|_]).
pertenencia(Elemento, [_|Lista]) :- pertenencia(Elemento, Lista).

ocurrencias(_, [], 0).
ocurrencias(Elemento, [Elemento|Resto], N) :- ocurrencias(Elemento, Resto, N1), N is N1 + 1.
ocurrencias(Elemento, [_|Resto], N) :- ocurrencias(Elemento, Resto, N).

eliminar_primero(_, [], []).
eliminar_primero(Elemento, [Elemento|Resto], Resto).
eliminar_primero(Elemento, [X|Resto], [X|Resto2]) :- eliminar_primero(Elemento, Resto, Resto2).

sustituir(_, _, [], []).
sustituir(Elemento, Nuevo, [Elemento|Resto], [Nuevo|Resto]).
sustituir(Elemento, Nuevo, [X|Resto], [X|Resto2]) :- sustituir(Elemento, Nuevo, Resto, Resto2).

longitud([], 0).
longitud([_|Resto], N) :- longitud(Resto, N1), N is N1 + 1.

prefijo([], _).
prefijo([X|Xs], [X|Ys]) :- prefijo(Xs, Ys).
