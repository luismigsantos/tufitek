program soma_3;
uses crt;
var n1,n2,res:real;
var op,y:char;

begin
repeat
clrscr;
writeln ('soma + ');
writeln ('subtracá∆o -');
writeln ('multiplicaá∆o *');
writeln ('divisao /');
write ('introduza a sua opá∆o: ');
readln (op);
write ('escreva o primeiro numero: ');
readln (n1);
write ('escreva o segundo numero: ');
readln (n2);
       if(op = '+') then
          begin
          res:=(n1)+(n2);
          write ('o resultado da soma Ç: ',res:6:2);
          end
       else
       if(op = '*') then
          begin
          res:=(n1)*(n2);
          write ('o resultado da multiplicaá∆o Ç: ',res:6:2);
          end
       else
       if(op = '/') then
          begin
          res:=(n1)/(n2);
          write ('o resultado da divis∆o Ç: ',res:6:2);
          end
       else
       if(op = '-') then
          begin
          res:=(n1)-(n2);
          write ('o resultado da subtracá∆o Ç: ',res:6:2);
          end
       else
       write ('Operaáao errada');
writeln ('Deseja repetir o programa (s/n)');
read (y);
until (y='N') or (y='n');
readln;
end.