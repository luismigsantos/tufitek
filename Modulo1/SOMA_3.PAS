program soma_3;
uses crt;
var n1,n2,res:real;
var op:char;

begin
clrscr;
write ('escreva o primeiro numero: ');
readln (n1);
write ('escreva o segundo numero: ');
readln (n2);
writeln ('Escolha uma opera�ao (+,-,*,/)');
readln (op);
       if(op = '+') then
          begin
          res:=(n1)+(n2);
          write ('o resultado �: ',res:6:2);
          end
       else
       write ('Opera�ao errada');
readln;
end.