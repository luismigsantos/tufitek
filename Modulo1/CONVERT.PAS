Program conversor;
Uses crt;
var n1, res: real;
 op:char;
Begin
 textbackground (green);
 clrscr;
 Writeln ('*********************************************');
 Writeln ('                     MENU                    ');
 Writeln ('*********************************************');
 Writeln ('                                             ');
 Writeln (' C Polegada Para Cent¡metro');
 Writeln (' P Cent¡metro Para Polegada');
 Writeln ('                                             ');
 Writeln ('*********************************************');
 Writeln ('*********************************************');
 Write('Introduza a opera‡ao pretendida: ');
 sound (300) ;
 nosound;
 Readln(op);
 Write('Introduza o primeiro n£mero: ');
 Readln(n1);
 If (op='C') or (op='c') then
  Begin
   Res:=n1*0.3937;
   Write('O resultado da conver‡ao de Polegada para Cent¡metro ‚:  ',res:6:2);
   Readkey;
  End
 Else
  If (op='P') or (op='p') then
   Begin
    Res:=n1*2.54;
    Write('O resultado da conver‡ao de Cent¡metro para polegada ‚: ',res:6:2);
    Readkey;
    Writeln ('***************************************************');
    Writeln ('                       FIM                         ');
    Writeln ('***************************************************');
   End
  Else
   Write('@@@@@@@@ Opera‡ao Inv lida.@@@@@@@@ ');
   Readln;
End.
