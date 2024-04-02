PROGRAM ejercicio22;
CONST largo = 10;
VAR nombres : array[1 .. largo] of String;
VAR nombre : String;
VAR i:integer ;
procedure alfabeticamente(nombres : String);
begin
    
end;
BEGIN
    FOR i := 1 TO largo DO
    begin
        writeln('Ingrese un nombre');
        read(nombre);
        nombres[i] := nombre;
    end;
END.

