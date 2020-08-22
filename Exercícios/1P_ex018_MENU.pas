Program ex018_MENU;
var OP : integer;
		N1, N2, S, R1, R2 : real;
Begin
	writeln;
	writeln('______________________________________________________________________________________');            
	writeln('|                                    MENU PRINCIPAL                                  |');
	writeln('______________________________________________________________________________________');
	write
	('
[ 1 ] Somar dois números
[ 2 ] Raiz quadrada de dois números

Digite a opção desejada: ');
	readln(OP);
	writeln;
	writeln('______________________________________________________________________________________');
	writeln;
	if OP = 1 then
		begin
			writeln('Calculando Soma...');
			writeln;
			write('Entre com o primeiro número: ');
			readln(N1);
			write('Entre com o segundo número: ');
			readln(N2);
			S := N1 + N2;
			writeln;
			writeln('______________________________________________________________________________________');
			writeln;
			writeln(N1:0:2, ' + ', N2:0:2, ' = ', S:0:2);
		end
	else if OP = 2 then
		begin
			writeln('Calculando raiz quadrada...');
			writeln;
			write('Entre com o primeiro número: ');
			readln(N1);
			write('Entre com o segundo número: ');
			readln(N2);
			R1 := sqrt(N1);
			R2 := sqrt(N2);
			writeln('______________________________________________________________________________________');
      writeln;
			writeln('A raiz quadrada de ', N1:0:2, ' é ', R1:0:2, ' e a raiz de ', N2:0:2, ' é ', R2:0:2, '.');
		end
	else
		begin
			writeln('Opção inválida! Reinicie o programa...');
		end;
  readln;
End.