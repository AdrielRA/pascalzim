Program EU_estudoProva003;
uses crt;
var V1, V2, V3 : array[1..10] of integer;
		I : integer;
Begin
	clrscr;
	textcolor(15);
	writeln('LENDO VALORES DO VETOR 1');
	writeln;
	for I := 1 to 10 do
		begin
			write(I, 'º valor: ');
			readln(V1[I]);
		end;
	clrscr;
	writeln('LENDO VALORES DO VETOR 2');
	for I := 1 to 10 do
		begin
			write(I, 'º valor: ');
			readln(V2[I]);
		end;
	for I := 1 to 10 do
		begin
			V3[I] := V1[I] * V2[I];
		end;
	clrscr;
	write('VETOR RESULTANTE: ');
	for I := 1 to 10 do
		begin
			write(V3[I], ' ');
		end;
	readln;  
End.