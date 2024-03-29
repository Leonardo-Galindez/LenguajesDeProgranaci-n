PROGRAM ejercicio10;
VAR a : integer ; b : integer;
VAR i : integer;
VAR producto : integer;
BEGIN
    writeln('Ingrese A');
    read(a);
    writeln('Ingrese B');
    read(b);
    producto := 0;
    FOR i := 1 to a DO
        begin
            producto := producto + b ;
        end;
    write('producto:',producto);
END.