program notas;
uses CRT;
var n1:real;
    op,y:char;

begin
repeat
clrscr;
writeln ('Introduza um valor de 0 a 20');
readln (n1);
if n1 <5.4 then
   begin
        clrscr;
        writeln ('O resultado da nota',n1:6:2,' ‚: Mau');
        readln;
   end
else
  if n1 <(9.4) then
    begin
      clrscr;
      writeln ('O resultado da nota',n1:6:2,' ‚: Insatifaz');
      readln;
    end
  else
    if n1 <(13.4) then
    begin
     clrscr;
     writeln ('O resultado da nota',n1:6:2,' ‚: Satisfaz');
     readln;
    end
else
        if n1 <(17.4) then
         begin
         clrscr;
         writeln ('O resultado da nota',n1:6:2,' ‚: Bom');
         readln;
         end
else
if n1 <(21) then
   begin
   clrscr;
   writeln ('O resultado da nota',n1:6:2,' ‚: Muito Bom');
   readln;
   end
else
if n1 >21 then
   begin
   writeln (' Valor Inv lido ');
   end;
readln;
writeln ('Deseja repetir o programa (s/n)');
read (y);
until (y='n') or (y='N');
end.