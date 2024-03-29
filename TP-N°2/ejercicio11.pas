PROGRAM ejercicio11;
VAR x : real ; y : integer ; i : integer ; r : real;

function expo(x : real ; y :integer):real;
begin
    r := 1;
    FOR i := 1 to y DO
        begin
            r := r * x;
        end;
    expo := r;
end;

BEGIN 
    writeln('Ingrese un numero x');
    read(x);
    writeln('Ingrese un numero y');
    read(y);

    write('exponente:', expo(x,y));
END.