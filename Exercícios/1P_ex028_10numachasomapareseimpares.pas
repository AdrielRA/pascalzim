Program ex028_10numachasomapareseimpares;
var I, NUM, SP, SI : integer;
Begin
	SP := 0;
	SI := 0;
	for I := 1 to 10 do
		begin
			write('Entre com o ', I, '� n�mero: ');
			readln(NUM);
			if ((NUM)mod(2) = 0) then
				SP := SP + NUM
			else
				SI := SI + NUM;
		end;
	writeln;
	writeln('A soma dos n�meros pares digitados �  : ', SP);
	writeln('A soma dos n�meros �mpares digitados �: ', SI);
	readln;
End.