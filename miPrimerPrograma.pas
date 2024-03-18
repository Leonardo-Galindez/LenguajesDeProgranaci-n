PROGRAM ejemplo; { Cabecera } 
CONST max=100; { Constantes } 
VAR a:integer; { Variables } 
BEGIN { <== inicia el programa principal } 
write ('Escriba␣un␣número:␣'); 
read(a); 
a := a+max; 
writeln('El␣resultado␣de␣A␣+␣100␣es:␣',a); 
END. { <== finaliza el programa principal }