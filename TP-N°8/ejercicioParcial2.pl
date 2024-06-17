% Predicado principal que realiza la transformación.
sumar_listas([], []).  % Caso base: una lista vacía se transforma en otra lista vacía.
sumar_listas([L1|Ls], [[Suma]|Sums]) :-
    sum_list(L1, Suma),  % Suma los elementos de la sublista L1.
    sumar_listas(Ls, Sums).  % Llama recursivamente para el resto de la lista.

% Predicado auxiliar que suma los elementos de una lista.
sum_list([], 0).  % Caso base: la suma de una lista vacía es 0.
sum_list([X|Xs], Suma) :-
    sum_list(Xs, Suma1),  % Suma los elementos restantes.
    Suma is X + Suma1.  % La suma final es la cabeza de la lista más la suma de la cola.



