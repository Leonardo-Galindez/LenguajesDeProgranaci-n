Program ejercicio2;
Var num1 , num2 : integer ;
function suma ( n1 : integer; n2 : integer) : integer;
begin
suma := n1 + n2;
end;
function resta ( n1 : integer; n2 : integer) : integer;
begin
resta := n1 - n2;
end;
function producto ( n1 : integer; n2 : integer) : integer;
begin
producto := n1 * n2;
end;
function division ( n1 : real; n2 : real) : real;
begin
division := n1 / n2;{ Consultar resultado } 
end;
Begin 
write('Ingrese numero:');
read(num1);
write('Ingrese numero:');
read(num2);

writeln('suma:', suma(num1,num2));
writeln('resta:', resta(num1,num2));
writeln('producto:', producto(num1,num2));
writeln('division:',  division(num1,num2));

End.