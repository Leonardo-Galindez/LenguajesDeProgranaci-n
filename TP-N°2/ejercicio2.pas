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

writeln('suma:', suma(num1,num2));
writeln('resta:', resta(num1,num2));
division(num1,num2);
producto(num1,num2);
End.