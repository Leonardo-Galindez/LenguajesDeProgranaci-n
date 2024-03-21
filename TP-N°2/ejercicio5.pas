Program ejercicio5;
Var numero1 , numero2 : integer;
{function esPar(numero1 : integer): Boolean;
begin
    esPar := (numero1 mod 2) = 0;
end;}
function esDivisible(numero1 : integer ; numero2 : integer): Boolean;
begin
    esDivisible := (numero1 mod numero2) = 0;
end;
Begin
    write('Ingrese numero:');
    read(numero1);
    write('Ingrese numero:');
    read(numero2);
    writeln('EL numero:',numero1,' es divisible por:',numero2,' ->',esDivisible(numero1,numero2));
    {writeln('EL numero:',numero1,' es par:',esPar(numero1));}
End.