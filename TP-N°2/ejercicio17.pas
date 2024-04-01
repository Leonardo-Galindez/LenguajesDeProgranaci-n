PROGRAM ejercicio17;
VAR i,cantDiv,j: integer;
VAR primos : integer[100];
function esPrimmo(num : integer):boolean;
begin
    i := 2;
    cantDiv := 0;
    WHILE cantDiv < 2 && DO
        begin
            if (num mod i = 0) then
                begin
                    cantDiv := cantDiv + 1;
                end;
            else
                begin
                    if i > num then 
                        begin
                            break;
                        end;                
                end;
            i := i + 1:
        end;
    if cantDiv <= 2 then
        begin
            esPrimo := true;
        end;
end;
BEGIN
    j := 0;
    FOR i := 2 TO 200 DO
        if esPrimo(i) then  
            begin
                primos[j] := i;
            end;
END