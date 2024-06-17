% Hechos iniciales para la relación on(Bloque1, Bloque2), que indica que Bloque1 está encima de Bloque2.
on(bloque1, bloque2).
on(bloque2, bloque3).
on(bloque3, bloque4).

% Regla para la clausura transitiva sobre la relación on.
arriba(Bloque1, Bloque2) :- on(Bloque1, Bloque2).
arriba(Bloque1, Bloque2) :- on(Bloque1, BloqueIntermedio), arriba(BloqueIntermedio, Bloque2).
 