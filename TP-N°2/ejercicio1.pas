Program Traza ; 
Var a , b , c , d , s : integer ; 
function alfa ( e : integer ; var f : integer ) : integer ; 
begin 
e :=1; 
f :=2; 
alfa := e + f ; 
end; 
Begin 
b :=10; 
c :=20; 
d := b + c ; 
a := alfa (b , c ) ;
s := b + c ; 
writeln('El␣resultado␣de␣A␣+␣100␣es:␣',a); 
End .