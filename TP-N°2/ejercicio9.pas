PROGRAM ejercicio9;
VAR num : real ;
VAR acum : real ;
procedure suma(var acum : real ; num: real);
begin
    acum := acum + num;
end;
BEGIN
    begin
        repeat
        writeln('Ingrese numero:');
        read(num);
        write('numero:',num);
        suma(acum,num);
        write('suma:',acum);
        until num = 0 ;
    end;
    
END.
