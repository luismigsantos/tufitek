program xixixi;
uses crt;
var
n1:real;
x:integer;
y:char;
begin
clrscr

writeln ('introduza um numero de 0 a 20');
readln (n1);
x:= round (n1);
case x of
0..5:
begin
writeln ('o resultado da nota ‚ :mau');
readln;
end;
6..9:
begin
writeln ('o resultado da nota ‚ :insatisfaz');
readln;
end;
10..13:
begin
writeln ('o resultado da nota ‚:satisfaz');
readln;
end;
14..17:
begin














































































































































































