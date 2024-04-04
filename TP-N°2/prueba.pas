program ConversionStringToInt;
uses
  SysUtils; // Incluye la unidad SysUtils para usar StrToIntDef
var
  strNumero: string;
  numEntero: Integer;


begin
  // Asigna un valor a strNumero
  strNumero := '123';

  // Intenta convertir strNumero a Integer usando StrToInt
  numEntero := StrToIntDef(strNumero, 0);

  // Verifica si la conversión fue exitosa
  if numEntero <> 0 then
    writeln('Valor entero: ', numEntero)
  else
    writeln('Error en la conversión o cadena vacía.');
end.