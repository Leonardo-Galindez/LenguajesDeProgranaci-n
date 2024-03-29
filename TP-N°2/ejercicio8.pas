PROGRAM ejercicio8;
VAR x,y,aux: integer;
procedure intercambio( VAR x:integer ; VAR y:integer);
begin
    aux := x;
    x := y;
    y := aux;
end;
BEGIN
    x := 3;
    y := 8;
    writeln('Antes del intercambio');
    writeln('x:',x);
    writeln('y:',y);
    intercambio(x,y);
    writeln('Despues del intercambio');
    writeln('x:',x);
    writeln('y:',y);
END.