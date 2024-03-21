Program ejercicio2;
Var num1 , num2 ,opcion: integer ;
function suma ( n1 : integer; n2 : integer) : integer;
begin
suma := n1 + n2;
end;
function resta ( n1 : integer; n2 : integer) : integer;
begin
resta := n1 - n2;
end;
procedure producto ( n1 : integer; n2 : integer);
begin
writeln('producto:', n1 * n2);
end;
procedure division ( n1 : integer; n2 : integer);
begin
writeln('division:', n1 / n2);{ Consultar resultado } 
end;
Begin 
write('Ingrese numero:');
read(num1);
write('Ingrese numero:');
read(num2);

writeln('Suma--------------1');
writeln('Resta-------------2');
writeln('Producto----------3');
writeln('Division----------4');
write('Ingrese opcion:');
read(opcion);
case opcion of
    1: 
    begin    
        writeln('suma:', suma(num1,num2));
    end;    
    2: 
    begin    
        writeln('resta:', resta(num1,num2));
    end;
    3: 
    begin    
        producto(num1,num2);
    end;
    4: 
    begin    
        division(num1,num2);
    end;
    else
        writeln('Opcion no valida');

end;
End.