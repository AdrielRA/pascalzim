Program ex010_tabuadamultiplicacao;
var N, cont, mul, R : integer;
Begin
	writeln('____________________________________________');
	writeln('          TABUADA DE MULTIPLICAÇÃO          ');
	writeln('____________________________________________');
  write('Digite um número para ver sua tabuada: ');
  readln(N);
  writeln('____________________________________________');
  cont := 0;
  mul := 0;
  while (cont <= 10) do
  	begin
  		R := mul * N;
  		writeln(mul:2:0, ' x ', N, ' = ', R);
  		cont := cont + 1;
  		mul := mul + 1;
  	end;
  writeln('____________________________________________');
  	readln;
End.