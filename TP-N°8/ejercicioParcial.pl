%Defina un predicado llamado elemento(K,L,S) donde S es la suma de lso elementos de la lista L

% Caso base: si K es 0, la suma de los primeros 0 elementos es 0.
elemento(0, _, 0).

% Caso base: si la lista es vacía, la suma es 0 (incluso si K es mayor que 0).
elemento(_, [], 0).

% Caso recursivo: sumar el primer elemento de la lista al resultado de la suma de los K-1 elementos restantes.
elemento(K, [H|T], S) :-
    K > 0,
    K1 is K - 1,       % Decrementar K en 1.
    elemento(K1, T, S1), % Llamada recursiva para sumar los K-1 elementos restantes.
    S is H + S1.       % La suma es la cabeza más la suma de los elementos restantes.


