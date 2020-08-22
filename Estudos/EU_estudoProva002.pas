Program EU_estudoProva002;
uses crt;
var Z : array[1..20] of integer;
		X, Y : array[1..10] of integer;
		C, R, I, J : integer;
		OK : boolean;
Begin
	clrscr;
	textcolor(15);
	for I := 1 to 10 do
		begin
			write(I, 'º valor: ');
			readln(X[I]);
		end;
	for I := 1 to 10 do
		begin
			write(I+10, 'º valor: ');
			readln(Y[I]);
		end;
	C := 0; R := 0;
	for I := 1 to 10 do
		begin
			OK := True;
			for J := 1 to 20 do
				begin
					if X[I] = Z[J] then
						begin
							OK := False;
							R := R + 1;
							break;
						end;	
				end;
			if OK then
				begin
					C := C + 1;
					Z[C] := X[I];
					OK := True;
				end;
		end;
	for I := 1 to 10 do
		begin
			OK := True;
			for J := 1 to 10 do
				begin
					if Y[I] = X[J] then
						begin
							OK := False;
							R := R + 1;
							break;
						end;	
				end;
			if OK then
				begin
					C := C + 1;
					Z[C] := Y[I];
					OK := True;
				end;
		end;
	writeln;
	write('VETOR RESULTANTE: ');
	for I := 1 to (20 - R) do
		write(Z[I], ' ');
  readln;
End.