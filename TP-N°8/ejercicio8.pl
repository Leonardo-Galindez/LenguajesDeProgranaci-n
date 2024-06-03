rotacion_izquierda([], []).
rotacion_izquierda([X|Xs], Rotado) :- append(Xs, [X], Rotado).

rotacion_derecha([], []).
rotacion_derecha(Lista, Rotado) :- append([Ultimo], Resto, Lista), append(Resto, [Ultimo], Rotado).

eliminar_ocurrencias(_, [], []).
eliminar_ocurrencias(Elemento, [Elemento|Resto], Resultado) :- eliminar_ocurrencias(Elemento, Resto, Resultado).
eliminar_ocurrencias(Elemento, [X|Resto], [X|Resultado]) :- Elemento \= X, eliminar_ocurrencias(Elemento, Resto, Resultado).

sustituir_todas(_, _, [], []).
sustituir_todas(Viejo, Nuevo, [Viejo|Resto], [Nuevo|Resultado]) :- sustituir_todas(Viejo, Nuevo, Resto, Resultado).
sustituir_todas(Viejo, Nuevo, [X|Resto], [X|Resultado]) :- Viejo \= X, sustituir_todas(Viejo, Nuevo, Resto, Resultado).

cardinalidad(Lista, Cardinalidad) :- eliminar_repetidos(Lista, SinRepetidos), longitud(SinRepetidos, Cardinalidad).
eliminar_repetidos([], []).
eliminar_repetidos([X|Resto], SinRepetidos) :- eliminar_ocurrencias(X, Resto, RestoSinX), eliminar_repetidos(RestoSinX, SinRepetidosSinX), append([X], SinRepetidosSinX, SinRepetidos).

inversion([], []).
inversion([X|Resto], Invertida) :- inversion(Resto, RestoInvertido), append(RestoInvertido, [X], Invertida).

sufijo(Sufijo, Lista) :- append(_, Sufijo, Lista).

palindromo(Lista, Palindromo) :- inversion(Lista, ListaInvertida), append(Lista, ListaInvertida, Palindromo).

doblar([], []).
doblar([X|Resto], [X,X|Doblada]) :- doblar(Resto, Doblada).
