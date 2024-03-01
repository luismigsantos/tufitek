program conversor;
uses crt;
var n1,n2,n3,res:real;
var ti,op,y:char;

begin
repeat
Sound (1000);
Delay(1000);
NoSound;
clrscr;
textcolor (green);
writeln ('     *----------------------------CALCULADORA----------------------------*');
writeln ('     |                                                                   |');
writeln ('     |                            µreas - A                              |');
writeln ('     |                                                                   |');
writeln ('     |                            Volume - V                             |');
writeln ('     |                                                                   |');
writeln ('     *-------------------------------------------------------------------*');
write ('Escolha uma opera‡Æo');
writeln (' ');
readln (ti);
if (ti='A') or (ti='a') then
begin
clrscr;
writeln ('     *------------------------CALCULADOR DE µREAS------------------------*');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     | Quadrado - Q                     Rectƒngulo - R                   |');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     | Triƒngulo - T                    Circulo - C                      |');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     *-------------------------------------------------------------------*');
write ('Escolha uma opera‡Æo');
textcolor (white);
writeln(' ');
readln (op);
case op of
'Q':begin
         writeln ('Introduza o valor do lado do quadrado');
         readln (n1);
         res:=n1*n1;
         writeln ('O resultado da  rea do quadrado ‚: ', res:6:2);
         end;
'T':begin
         writeln ('Introduza o valor da altura do triƒngulo');
         readln (n1);
         writeln ('Introduza o valor da base do triƒngulo');
         readln (n2);
         res:=(n1*n2)/2;
         writeln ('O resultado da  rea do triƒgulo ‚: ', res:6:2);
         end;
'R':begin
         writeln ('Introduza o valor da largura do rectƒngulo');
         readln (n1);
         writeln ('Introduza o valor do comprimento do rectƒngulo');
         readln (n2);
         res:=n1*n2;
         writeln ('O resultado da  rea do rectƒngulo ‚: ', res:6:2);
         end;
'C':begin
         writeln ('Introduza o valor do raio do circulo');
         readln (n1);
         res:=(n1*n1)*Pi;
         writeln ('O resultado da  rea do circulo ‚: ', res:6:2);
         end;
else
writeln ('Opera‡Æo Inv lida');
end;
end
else
begin
clrscr;
writeln ('     *-----------------------CALCULADOR DE VOLUMES-----------------------*');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     | Cubo - C                         Paralelipipedo - P               |');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     | Pirƒmide - I                     Esfera - E                       |');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     *-------------------------------------------------------------------*');
write ('Escolha uma opera‡Æo');
textcolor (white);
writeln(' ');
read (op);
case op of
'C':begin
         writeln ('Introduza o valor do lado do cubo');
         readln (n1);
         res:=n1*n1*n1;
         writeln ('O resultado do volume do cubo ‚: ', res:6:2);
         end;
'P':begin
         writeln ('Introduza o valor da largura do paralelipipedo');
         readln (n1);
         writeln ('Introduza o valor do comprimento do paralelipipedo');
         readln (n2);
         writeln ('Introduza o valor da altura do paralelipipedo');
         res:=n1*n2*n3;
         writeln ('O resultado do volume do paralelipipedo ‚: ', res:6:2);
         end;
'I':begin
         writeln ('Introduza o valor da altura da base da pirƒmide');
         readln (n1);
         writeln ('Introduza o valor da area da base da pirƒmide');
         readln (n2);
         res:=(1/3)*n1*n2;
         writeln ('O resultado do volume da pirƒmide ‚: ', res:6:2);
         end;
'E':begin
         writeln ('Introduza o valor do raio da esfera');
         readln (n1);
         res:=(4/3)*Pi*(n1*n1*n1);
         writeln ('O resultado do volume da esfera ‚: ', res:6:2);
         end;
else
writeln ('Opera‡Æo Inv lida');
end;
end;
writeln ('Deseja repetir o programa (s/n)');
read (y);
until (y='N') or (y='n');
readln;
end.