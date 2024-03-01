program conversor;
uses crt;
var n1,n2,res:real;
var op,y:char;

begin
repeat
Sound (1000);
Delay(1000);
NoSound;
clrscr;
textcolor (green);
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
writeln ('Escolha uma opera‡Æo');
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
writeln ('Deseja repetir o programa (s/n)');
read (y);
until (y='N') or (y='n');
readln;
end.