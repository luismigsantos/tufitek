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
writeln ('     *------------------------CALCULADOR DE �REAS------------------------*');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     | Quadrado - Q                     Rect�ngulo - R                   |');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     | Tri�ngulo - T                    Circulo - C                      |');
delay (500);
writeln ('     |                                                                   |');
delay (500);
writeln ('     *-------------------------------------------------------------------*');
writeln ('Escolha uma opera��o');
textcolor (white);
writeln(' ');
readln (op);
case op of
'Q':begin
         writeln ('Introduza o valor do lado do quadrado');
         readln (n1);
         res:=n1*n1;
         writeln ('O resultado da �rea do quadrado �: ', res:6:2);
         end;
'T':begin
         writeln ('Introduza o valor da altura do tri�ngulo');
         readln (n1);
         writeln ('Introduza o valor da base do tri�ngulo');
         readln (n2);
         res:=(n1*n2)/2;
         writeln ('O resultado da �rea do tri�gulo �: ', res:6:2);
         end;
'R':begin
         writeln ('Introduza o valor da largura do rect�ngulo');
         readln (n1);
         writeln ('Introduza o valor do comprimento do rect�ngulo');
         readln (n2);
         res:=n1*n2;
         writeln ('O resultado da �rea do rect�ngulo �: ', res:6:2);
         end;
'C':begin
         writeln ('Introduza o valor do raio do circulo');
         readln (n1);
         res:=(n1*n1)*Pi;
         writeln ('O resultado da �rea do circulo �: ', res:6:2);
         end;
else
writeln ('Opera��o Inv�lida');
end;
writeln ('Deseja repetir o programa (s/n)');
read (y);
until (y='N') or (y='n');
readln;
end.