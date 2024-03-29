PROGRAM ejercicio14;
VAR cadena : String;
VAR cont , i: integer;
function contadorCaracteres(cadena : String):integer;
    begin
        cont := -1;
        i := 0;
        WHILE cadena[i] <> '.' DO 
            begin 
                i := i + 1;
                cont := cont + 1;
            end;
        contadorCaracteres := cont;
    end;
function contadorPalabras(cadena : String):integer;
    begin
        cont := -1;
        i := 0;
        WHILE cadena[i] <> '.' DO 
            begin 
                i := i + 1;
                if(cadena[i]=' ') then
                    begin
                        cont := cont + 1;
                    end;
            end;
        contadorPalabras := cont;
    end;
BEGIN
    writeln('Ingrese Cadena:');
    read(cadena);
    write('Cantidad de caracteres:', contadorCaracteres(cadena));
END.