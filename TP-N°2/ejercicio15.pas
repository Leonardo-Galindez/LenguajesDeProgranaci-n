PROGRAM ejercicio15;
//Error al final NO SE que puede ser
uses
  SysUtils;
VAR cadena , r , vocal :String ; cant , mayor , j : integer ; letra : char ;
VAR a,e,i,o,u : integer;
function mayorVocal(cadena : String):String;
    begin
        i := 0;
        WHILE cadena[j] <> '.' DO
            begin
                letra := cadena[j];
                mayor := 0;
                a := 0;
                e := 0;
                i := 0;
                o := 0;
                u := 0;
                case letra of
                    'a': a := a + 1;
                    'e': e := e + 1;
                    'i': i := i + 1;
                    'o': o := o + 1;
                    'u': u := u + 1;
                else
            j := j + 1;
            end;
        if mayor < a then
            begin
                mayor := a;
                vocal := 'a';
                if mayor < e then
                    begin
                        mayor := e;
                        vocal := 'e';
                        if mayor < i then   
                            begin
                                mayor := i;
                                vocal := 'i';
                                if mayor < o then
                                    begin
                                        mayor := o;
                                        vocal := 'o';
                                        if mayor < u then   
                                            begin
                                                mayor := u;
                                                vocal := 'u';
                                            end;
                                    end;
                            end;
                    end;
            end;
        mayorVocal := letra + ':' + IntToStr(mayor);
    end;
BEGIN
    writeln('Ingrese cadena:');
    read(cadena);
    writeln(mayorVocal(cadena));
END.