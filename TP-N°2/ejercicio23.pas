PROGRAM ejercicio23;
uses
  SysUtils; // Incluye la unidad SysUtils para usar StrToIntDef
VAR cadena: String ;
VAR i , j , e , u , code: integer;
VAR num1S , num2S : String;
VAR num1 , num2 : integer;
VAR subStrings : array[1 .. 3] of String;
VAR resultado : integer;

function realizarOperacion(simbolo : String; num1 : integer ; num2 : integer):integer;
begin
    if simbolo = 'mas' then 
    begin
        resultado := num1 + num2;
    end
    else 
        if simbolo = 'menos' then
        begin
            resultado := num1 - num2;
        end;
    realizarOperacion := resultado;
end;

procedure obtenerCadenas(cadena : String);
begin
    j := 0;
    e := 1;
    u := 0;
    FOR i := 0 TO length(cadena) DO
    begin
        if cadena[u] = ' ' then
        begin
            subStrings[e] := Copy(cadena,j,u-1);
            e := e + 1;
            j := u + 1;
            
        end;
        u := u + 1;
    end;
end;

BEGIN
    writeln('Ingrese cadena');
    read(cadena);
    obtenerCadenas(cadena);
    num1S := subStrings[1];
    num2S := subStrings[3];
    Val(num1S,num1,code);
    Val(num2S,num2,code);
    writeln('resultado:',realizarOperacion(subStrings[2],num1,num2));
END.