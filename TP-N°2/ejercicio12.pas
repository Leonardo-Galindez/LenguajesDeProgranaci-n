PROGRAM ejercicio12;
VAR num : integer;
VAR divisor : integer;
BEGIN
    writeln('Ingrese numero:');
    read(num);

    divisor:= 2;

    WHILE num > 1 DO
        begin
            if (num mod divisor = 0) then
                begin
                    write('factor:', divisor);
                    num := num div divisor;
                    writeln;
                end
            else
                begin
                    divisor := divisor + 1;
                end;
       
        end;
END.