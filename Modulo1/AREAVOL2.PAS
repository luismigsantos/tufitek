program conversor;
uses crt;
var n1,n2,n3,res:real;
var ti,op,y:char;

begin
repeat
Delay(1000);
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
writeln ('     |                                                                   |');
writeln ('     |                                                                   |');
writeln ('     |                                                                   |');
writeln ('     | Quadrado - Q                     Rectƒngulo - R                   |');
writeln ('     |                                                                   |');
writeln ('     |                                                                   |');
writeln ('     | Triƒngulo - T                    Circulo - C                      |');
writeln ('     |                                                                   |');
writeln ('     |                                                                   |');
writeln ('     |                                                                   |');
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
         writeln (' .....                                          ');
         writeln (' :   :                                          ');
         writeln (' :...:                                          ');
         end;
'T':begin
         writeln ('Introduza o valor da altura do triƒngulo');
         readln (n1);
         writeln ('Introduza o valor da base do triƒngulo');
         readln (n2);
         res:=(n1*n2)/2;
         writeln ('O resultado da  rea do triƒgulo ‚: ', res:6:2);
         writeln ('        4  ');
         writeln ('       444    ');
         writeln ('      44444   ');
         writeln ('     4444444   ');
         end;
'R':begin
         writeln ('Introduza o valor da largura do rectƒngulo');
         readln (n1);
         writeln ('Introduza o valor do comprimento do rectƒngulo');
         readln (n2);
         res:=n1*n2;
         writeln ('O resultado da  rea do rectƒngulo ‚: ', res:6:2);
         writeln (' .........                                      ');
         writeln (' :       :                                      ');
         writeln (' :.......:                                      ');
         end;
'C':begin
         writeln ('Introduza o valor do raio do circulo');
         readln (n1);
         res:=(n1*n1)*Pi;
         writeln ('O resultado da  rea do circulo ‚: ', res:6:2);
         writeln ('        *  *  ');
         writeln ('      *      *   ');
         writeln ('     *        *   ');
         writeln ('      *      *    ');
         writeln ('        *  *      ');
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
         writeln ('           ,________  ');
         writeln ('         / |        |');
         writeln ('         | |        |');
         writeln ('         |,|________| ');
         writeln ('         |_________/   ');
         end;
'P':begin
         writeln ('Introduza o valor da largura do paralelipipedo');
         readln (n1);
         writeln ('Introduza o valor do comprimento do paralelipipedo');
         readln (n2);
         writeln ('Introduza o valor da altura do paralelipipedo');
         res:=n1*n2*n3;
         writeln ('O resultado do volume do paralelipipedo ‚: ', res:6:2);
         writeln ('           ,________________  ');
         writeln ('         / |                |');
         writeln ('         | |                |');
         writeln ('         |,|________________| ');
         writeln ('         |_________________/   ');
         end;
'I':begin
         writeln ('Introduza o valor da altura da base da pirƒmide');
         readln (n1);
         writeln ('Introduza o valor da area da base da pirƒmide');
         readln (n2);
         res:=(1/3)*n1*n2;
         writeln ('O resultado do volume da pirƒmide ‚: ', res:6:2);
         writeln ('            4  ');
         writeln ('           4:4  ');
         writeln ('          4.;;4    ');
         writeln ('         4..;;;4      ');
         writeln ('        4....;;;4        ');
         writeln ('       4.....;;;;4          ');
         writeln ('      4.......;;;;4          ');
         writeln ('     4.........;;;;4           ');
         writeln ('    44444444444444444             ');
         end;
'E':begin
         writeln ('Introduza o valor do raio da esfera');
         readln (n1);
         res:=(4/3)*Pi*(n1*n1*n1);
         writeln ('O resultado do volume da esfera ‚: ', res:6:2);
         writeln ('          * * *       ');
         writeln ('        *       *        ');
         writeln ('       *  *       *         ');
         writeln ('      *  *     *   *          ');
         writeln ('      *  *     *   *         ');
         writeln ('       *      *   *         ');
         writeln ('        *        *          ');
         writeln ('           * * *        ');
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