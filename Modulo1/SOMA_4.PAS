program soma_3;
uses crt;
var n1,n2,res:real;
var op:char;

begin
clrscr;
writeln ('     *-------------------------CONVERSOR DE EUROS------------------------*');
writeln ('     |                                                                   |');
writeln ('     | Op‡Æo A - Converte euros para escudos                             |');
writeln ('     |                                                                   |');
writeln ('     | Op‡Æo B - Converte escudos para euros                             |');
writeln ('     |                                                                   |');
writeln ('     *-------------------------------------------------------------------*');
write ('Escreva o primeiro numero: ');
readln (n1);
write ('Escreva o segundo numero: ');
readln (n2);
write ('Escolha op‡Æo');
readln (op);
       if(op = '+') then
          begin
          res:=(n1)+(n2);
          write ('o resultado ‚: ',res:6:2);
          end
       else
       if(op = '*') then
          begin
          res:=(n1)*(n2);
          write ('o resultado ‚: ',res:6:2);
          end
       else
       if(op = '/') then
          begin
          res:=(n1)/(n2);
          write ('o resultado ‚: ',res:6:2);
          end
       else
       if(op = '-') then
          begin
          res:=(n1)-(n2);
          write ('o resultado ‚: ',res:6:2);
          end
       else
       write ('Opera‡ao errada');
readln;
end.