program OperacionesComplejas;

type
  Complejo = record
    real: Real;
    imag: Real;
  end;

procedure Suma(num1, num2: Complejo; var resultado: Complejo);
begin
  resultado.real := num1.real + num2.real;
  resultado.imag := num1.imag + num2.imag;
end;

procedure Resta(num1, num2: Complejo; var resultado: Complejo);
begin
  resultado.real := num1.real - num2.real;
  resultado.imag := num1.imag - num2.imag;
end;

procedure Multiplicacion(num1, num2: Complejo; var resultado: Complejo);
begin
  resultado.real := (num1.real * num2.real) - (num1.imag * num2.imag);
  resultado.imag := (num1.real * num2.imag) + (num1.imag * num2.real);
end;

procedure Division(num1, num2: Complejo; var resultado: Complejo);
var
  denominador: Real;
begin
  denominador := (num2.real * num2.real) + (num2.imag * num2.imag);
  resultado.real := ((num1.real * num2.real) + (num1.imag * num2.imag)) / denominador;
  resultado.imag := ((num1.imag * num2.real) - (num1.real * num2.imag)) / denominador;
end;

var
  num1, num2, resultado: Complejo;

begin
  // Asignación de valores para num1
  num1.real := 5;
  num1.imag := 3;

  // Asignación de valores para num2
  num2.real := 2;
  num2.imag := 1;

  // Suma
  Suma(num1, num2, resultado);
  writeln('Suma: ', resultado.real:0:2, ' + ', resultado.imag:0:2, 'i');

  // Resta
  Resta(num1, num2, resultado);
  writeln('Resta: ', resultado.real:0:2, ' + ', resultado.imag:0:2, 'i');

  // Multiplicación
  Multiplicacion(num1, num2, resultado);
  writeln('Multiplicacion: ', resultado.real:0:2, ' + ', resultado.imag:0:2, 'i');

  // División
  Division(num1, num2, resultado);
  writeln('Division: ', resultado.real:0:2, ' + ', resultado.imag:0:2, 'i');
end.