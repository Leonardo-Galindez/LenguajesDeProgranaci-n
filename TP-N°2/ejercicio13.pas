PROGRAM ejercicio13;
VAR f ,c : real;
VAR i : integer;
function conversor(f : real):real;
    begin
        conversor := 5/9 * (f - 32);
    end;
BEGIN
    f := 0;
    FOR i := 1 to 20 DO
        begin
            c := conversor(f); 
            writeln('Celsius:',c,'° -> Fahrebheit:',f );
            writeln;
            f := f + 10;
        end;
END.