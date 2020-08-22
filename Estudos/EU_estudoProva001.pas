Program EU_estudoProva001;
uses crt;
var V:array[1..20] of integer;
		NV : array[1..20] of integer;
		I, J : integer;
Begin
	clrscr;
	textcolor(15);
	J := 20;
	for I := 1 to 20 do
		begin
			write(I, 'º valor: ');
			readln(V[I]);
		end;
	for I := 1 to 20 do
		begin
			NV[I] := V[J];
			J := J - 1;
		end;
	write('NOVO VETOR: ');
	for I := 1 to 20 do
		begin
			write(NV[I], ' ');
		end;
  readln;
End.