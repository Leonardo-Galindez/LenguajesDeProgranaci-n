PROGRAM ejercicio15;
uses
  SysUtils;
  
VAR 
  cadena, vocal: String;
  mayor, j: integer;
  letra: char;
  a, e, i, o, u: integer;

function mayorVocal(cadena: String): String;
begin
  a := 0;
  e := 0;
  i := 0;
  o := 0;
  u := 0;
  mayor := 0;
  j := 1; // Inicializar j

  WHILE cadena[j] <> '.' DO
  begin
    letra := LowerCase(cadena[j]); // Convertir letra a minúscula para comparaciones
    case letra of
      'a': a := a + 1;
      'e': e := e + 1;
      'i': i := i + 1;
      'o': o := o + 1;
      'u': u := u + 1;
    end;
    j := j + 1; // Incrementar j para avanzar en la cadena
  end;

  // Encontrar la vocal más frecuente
  if a >= mayor then
  begin
    mayor := a;
    vocal := 'a';
  end;
  if e >= mayor then
  begin
    mayor := e;
    vocal := 'e';
  end;
  if i >= mayor then
  begin
    mayor := i;
    vocal := 'i';
  end;
  if o >= mayor then
  begin
    mayor := o;
    vocal := 'o';
  end;
  if u >= mayor then
  begin
    mayor := u;
    vocal := 'u';
  end;

  // Retornar la vocal más frecuente y su cantidad
  mayorVocal := vocal + ':' + IntToStr(mayor);
end;

BEGIN
  writeln('Ingrese cadena:');
  readln(cadena); // Usar readln para leer toda la línea, incluyendo espacios

  writeln(mayorVocal(cadena));
END.
