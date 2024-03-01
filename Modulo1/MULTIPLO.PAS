program multiplos;
uses crt;
var n,x,res:integer;

begin
clrscr;
textcolor (green);
Write ('Introduza o numero que deseja calcular multiplos: ');
readln(x);
for n:=1 to 20 do
    begin
    res:=x*n;
    delay (250);
    textcolor (white);
    writeln (x,'x',n,'=',res);
    end;
readln;
end.