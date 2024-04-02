PROGRAM ejercicio23;
VAR cadena: String ;
function realizarOperacion(cadena : String):real;
begin
    //recorro la cadena hasta el primer espacio y hago copy...
    num1 := Copy(cadena,1,2);
end;

BEGIN
    writeln('Ingrese cadena');
    read(cadena);
    realizarOperacion(cadena);
    
END.