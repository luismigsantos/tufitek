program multiplos;
uses crt;
var n,x,res:integer;
    y:char;

begin
repeat
clrscr;
textcolor (green);
Write ('Introduza o numero que deseja calcular multiplos: ');
readln(x);
n:=0;
repeat
    n:=n+1;
    res:=x*n;
    delay (250);
    textcolor (white);
    writeln (x,'x',n,'=',res);
until n>=20;
writeln ('Deseja realizar o programa mais uma vez (s/n)');
read (y);
until (y='N') or (y='n');
readln;
end.