Procedure caixa (x1,y1,x2,y2:integer);


Const
     cse=201;
     csd=187;
     cie=200;
     cid=188;
     cv=186;
     ch=205;

Var
   i:integer;

Begin
     gotoxy (x1,y1);
     write (chr(cse));
     For i:=x1+1 to x2-1 do
         write (chr(ch));
     write (chr(csd));
     For i:=y1+1 to y2-1 do
         Begin
              gotoxy (x1,i); write (chr(cv));
              gotoxy (x2,i); write (chr(cv));
         End;
     gotoxy (x1,y2); write (chr(cie));
     For i:=x1+1 to x2-1 do
         write (chr(ch));
     write (chr(cid));
End;
procedure introducao;
var i:integer;
begin
     clrscr;
     gotoxy(10,50);
     for i:=1 to 70 do
         write(chr(177));
     readln
end;