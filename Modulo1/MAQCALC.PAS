program soma_3;
uses crt;
var n1,n2,res:real;
var op,y:char;

begin
repeat
clrscr;
writeln ('soma + ');
writeln ('subtrac��o -');
writeln ('multiplica��o *');
writeln ('divisao /');
write ('introduza a sua op��o: ');
readln (op);
write ('escreva o primeiro numero: ');
readln (n1);
write ('escreva o segundo numero: ');
readln (n2);
       if(op = '+') then
          begin
          res:=(n1)+(n2);
          write ('o resultado da soma �: ',res:6:2);
          end
       else
       if(op = '*') then
          begin
          res:=(n1)*(n2);
          write ('o resultado da multiplica��o �: ',res:6:2);
          end
       else
       if(op = '/') then
          begin
          res:=(n1)/(n2);
          write ('o resultado da divis�o �: ',res:6:2);
          end
       else
       if(op = '-') then
          begin
          res:=(n1)-(n2);
          write ('o resultado da subtrac��o �: ',res:6:2);
          end
       else
       write ('Opera�ao errada');
writeln ('Deseja repetir o programa (s/n)');
read (y);
until (y='N') or (y='n');
readln;
end.