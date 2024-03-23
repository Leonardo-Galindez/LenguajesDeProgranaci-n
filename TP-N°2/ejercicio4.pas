Program ejercicio4;
{dan informacion de errorres antes que los no tan fuertemente tipado}
Var num : real;
function mayor(numero : Real): Boolean;
begin
    mayor := numero > 0;
end;
Begin
    write('Ingrese numero');
    read(num);
    if mayor(num) then
    begin
        writeln('El numero es mayor que "0"');
    end
    else
    begin
        if num < 0 then
        begin
            writeln('El numero es menor que "0"');
        end
        else
        begin
            writeln('El numero es igual a "0"');
        end;
    end;
End.