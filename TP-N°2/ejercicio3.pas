Program ejercicio3;
USES Math; {Utilizamos la libreria Math}
Var radio , altura : real;
procedure superficieVolumen( rad : real; alt : real);
begin
writeln('superficie:', Pi * Sqr(rad) );
writeln('volumen:', Pi * Sqr(rad) * alt);
end;
Begin
write('Igrese Radio de la esfera');
read(radio);
write('Ingrese Altura de la esfera');
read(altura);
superficieVolumen(radio,altura);
End.