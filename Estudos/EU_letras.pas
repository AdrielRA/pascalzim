Program Pzim ;
var frase : string;
		contador : integer;
Begin
   write('Escreva uma frase: ');
   readln(frase);
   contador := length(frase);
   writeln;
   writeln('Esta frase possui: ', contador, ' letras.');
   writeln('Em maiúsculas: ', upcase(frase), '.');
   readln;
End.