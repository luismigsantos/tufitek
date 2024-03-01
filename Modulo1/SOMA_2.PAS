program soma;
uses crt;
var
   num1,num2,num3,res:real;
begin
    clrscr;
    write ('escreve o 1o numero: ');
    readln (num1);
    write ('escreve o 2o numero: ');
    readln (num2);
    write ('escreve o 3o numero: ');
    readln (num3);
    res:=num1+num2+num3;
    write ('o resultado ‚: ',res:6:2);
    readln;
end.