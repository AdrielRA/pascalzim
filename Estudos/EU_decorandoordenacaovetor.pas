Program decorandoordenacaovetor;
var V : array[1..1000] of integer;
		C, D, I, J, M, N, OP, R : integer;
Begin
	textcolor(15);
	repeat
		begin
			clrscr;
			write('PROCESSANDO...');
			for I := 1 to 1000 do
				begin
					N := random(1001);
					J := I - 1;
					while (J > 0) and (N < V[J]) do
						begin
							V[J+1] := V[J];
							J := J - 1;
						end;
					V[J+1] := N;
				end;
			for I := 1 to 1000 do
				begin
					R := 0;
					for J := 1 to 1000 do
						if V[I] = V[J] then
							begin
								R := R + 1;
								if R > M then
									begin
										M := R;
										N := V[J];
									end;
							end;
				end;
			clrscr;
			C := 0; D := 0;
			writeln('VETOR ORDEM CRESCENTE:');
			writeln;
			write('|');
			for I := 1 to 1000 do
				begin
					write(V[I]:4, '|');
					C := C + 1;
					if (C = 30) and (D < 35) then
						begin
							writeln;
							write('|');
							D := D + 1;
							C := 0;
						end;
				end;
			writeln;
			writeln;
			writeln('O valor que mais se repetiu foi: ', N, ', aparecendo ', M, ' vezes!');
			writeln;
			write('[ESC] Sair [ENTER] Continuar');
			OP := ord(readkey);
		end;
	until OP = 27;
End.