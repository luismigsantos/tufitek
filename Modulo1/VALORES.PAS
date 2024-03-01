program num;
uses CRT;
var n1,n2,n3,res:real;
    y:char;

begin
repeat
clrscr;
writeln ('Introduza o primeiro numero');
readln (n1);
writeln ('Introduza o segundo numero');
readln (n2);
writeln ('Introduza o terceiro numero');
readln (n3);
if n1>n2 then
      if n2>n3 then
         writeln (n1:6:2, (' ‚ maior que'), n2:6:2, (' ‚ maior que'), n3:6:2);
                 if n2>n3 then
                    if n3>n1 then
                       writeln (n2:6:2, (' ‚ maior que'), n3:6:2, (' ‚ maior que'), n1:6:2);
                          if n3>n1 then
                             writeln (n3:6:2, ( '‚ maior que'), n1:6:2, (' ‚ menor que'), n2:6:2);
                                     if n1<n2 then
                                        if n2<n3 then
                                           writeln (n1:6:2, (' ‚ menor que'), n2:6:2, (' ‚ menor que'), n3:6:2);
                                                   if n2<n3 then
                                                      if n3<n1 then
                                                         writeln (n2:6:2, (' ‚ menor que'), n3:6:2, (' ‚ menor que'), n1:6:2);
                                                                 if n3<n1 then
                                                      writeln (n3:6:2, (' ‚ menor que'), n1:6:2, (' ‚ maior que'), n2:6:2);
writeln ('Deseja repetir o programa (s/n)');
readln (y);
until (y='N') or (y='n');
end.