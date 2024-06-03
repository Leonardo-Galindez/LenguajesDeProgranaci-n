% Predicados de género
femenino(ana).
femenino(maria).
femenino(laura).
femenino(eugenia).
femenino(andrea).
femenino(sandra).
femenino(claudia).
femenino(norma).
femenino(cecilia).
femenino(silvia).

masculino(juan).
masculino(pedro).
masculino(ariel).
masculino(luciano).
masculino(luis).
masculino(pablo).
masculino(tomas).
masculino(jose).
masculino(jorge).
masculino(javier).
masculino(gabriel).
masculino(carlos).
masculino(damian).
masculino(rodolfo).
masculino(martin).
masculino(daniel).

% Predicados de progenitor
progenitor(cecilia, gabriel).
progenitor(jorge, carlos).
progenitor(juan, ana).
progenitor(maria, ana).
progenitor(pedro, pablo).
progenitor(maria, pablo).
progenitor(juan, luis).
progenitor(maria, luis).
progenitor(pedro, luciano).
progenitor(laura, luciano).
progenitor(laura, ariel).
progenitor(pedro, ariel).
progenitor(tomas, pedro).
progenitor(jose, juan).
progenitor(daniel, laura).
progenitor(andrea, laura).
progenitor(eugenia, maria).
progenitor(martin, maria).
progenitor(eugenia, rodolfo).
progenitor(martin, rodolfo).
progenitor(eugenia, sandra).
progenitor(martin, sandra).
progenitor(rodolfo, damian).
progenitor(claudia, damian).
progenitor(norma, andrea).
progenitor(carlos, andrea).
progenitor(norma, cecilia).
progenitor(carlos, cecilia).
progenitor(javier, gabriel).
progenitor(silvia, carlos).

% Predicados de matrimonio
casado(juan, maria).
casado(eugenia, martin).
casado(daniel, andrea).
casado(cecilia, javier).
casado(pedro, laura).
casado(rodolfo, claudia).
casado(norma, carlos).


% Predicados de padre y madre
padre(Padre, Hijo) :- progenitor(Padre, Hijo), masculino(Padre).
madre(Madre, Hijo) :- progenitor(Madre, Hijo), femenino(Madre).

% Predicado de hermano y hermana
hermano(Hermano, Persona) :- progenitor(Padre, Persona), progenitor(Padre, Hermano), Hermano \= Persona, masculino(Hermano).
hermana(Hermana, Persona) :- progenitor(Padre, Persona), progenitor(Padre, Hermana), Hermana \= Persona, femenino(Hermana).

% Predicado de abuelo y bisabuelo
abuelo(Abuelo, Nieto) :- progenitor(Abuelo, Padre), progenitor(Padre, Nieto), masculino(Abuelo).
bisabuelo(Bisabuelo, Bisnieto) :- progenitor(Bisabuelo, Abuelo), progenitor(Abuelo, Padre), progenitor(Padre, Bisnieto), masculino(Bisabuelo).

% Predicado de tío y primo
tio(Tio, Sobrino) :- progenitor(Padre, Sobrino), hermano(Tio, Padre), masculino(Tio).
primo(Primo, Persona) :- progenitor(Padre1, Persona), progenitor(Padre2, Primo), hermano(Padre1, Padre2), Primo \= Persona, masculino(Primo).

% Predicado de ancestro
ancestro(Antepasado, Descendiente) :- progenitor(Antepasado, Descendiente).
ancestro(Antepasado, Descendiente) :- progenitor(Antepasado, Padre), ancestro(Padre, Descendiente).

% Predicados de esposo y esposa
esposo(Esposo, Esposa) :- casado(Esposo, Esposa), masculino(Esposo).
esposa(Esposa, Esposo) :- casado(Esposa, Esposo), femenino(Esposa).

% Predicado de soltero
soltero(Persona) :- not(casado(Persona, _) ; casado(_, Persona)).

% Predicado de amante
amante(Amante, Persona) :- casado(Persona, Pareja), casado(Amante, Otro), Pareja \= Amante, Otro \= Persona.

% Predicado de suegra y suegro
suegra(Suegra, Persona) :- casado(Persona, Pareja), progenitor(Suegra, Pareja), femenino(Suegra).
suegro(Suegro, Persona) :- casado(Persona, Pareja), progenitor(Suegro, Pareja), masculino(Suegro).
