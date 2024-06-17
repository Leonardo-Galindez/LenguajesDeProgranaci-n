% Definición de la función sucesor
sucesor(0, s(0)).
sucesor(s(N), s(s(N))).

% Operación de suma
% Caso base:
suma(0, N, N)   .
% Caso recursivo:
suma(s(M), N, s(R)) :- suma(M, N, R).

% Operación de resta
resta(N, 0, N).
resta(s(M), s(N), R) :- resta(M, N, R).

% Operación de multiplicación
multiplicacion(0, _, 0). % "_" es cualquier cosa
multiplicacion(s(M), N, R) :- multiplicacion(M, N, MR), suma(N, MR, R).

% Operación de división
division(_, 0, 0). % No se puede dividir por 0
division(N, s(M), Q) :- resta(N, M, R), division(R, s(M), Q).

% Operación de potenciación
potenciacion(_, 0, s(0)). % Cualquier número elevado a 0 es 1
potenciacion(N, s(M), R) :- potenciacion(N, M, PR), multiplicacion(N, PR, R).

% Operación de orden mayor o igual (≥)
mayor_o_igual(0, 0).
mayor_o_igual(s(_), 0).
mayor_o_igual(s(M), s(N)) :- mayor_o_igual(M, N).

% Árbol SLD para suma
% Consulta: suma(s(s(0)), s(s(s(0))), R).
% R = s(s(s(s(s(0))))).
%           +
%          / \
%         /   \
%        /     \
%   s(s(0))   s(s(s(0)))    
%      |          |
%      M          N

% Árbol SLD para resta
% Consulta: resta(s(s(s(0))), s(s(0)), R).
% R = s(0).
%         -
%        / \
%       /   \
%      /     \
% s(s(s(0))) s(s(0))
%      |        |
%      N        M

% Puedes seguir el mismo patrón para las demás operaciones.
