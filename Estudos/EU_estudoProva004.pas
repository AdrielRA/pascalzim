Program EU_estudoProva004;
uses crt;
var V : array[1..100] of integer;
		A, C, D, I, J, N, OP : integer;
		OK : boolean;
Begin
	repeat
		begin
			clrscr;
			textcolor(15);
			for I := 1 to 100 do
				begin
					N := random(101);
					J := I-1;
					while (J > 0) and (N < V[J]) do
						begin
							V[J+1] := V[J];
							J := J -1;
						end;
					V[J+1] := N;
				end;
			clrscr;
			C := 0; D := 0;
			writeln('VETOR EM ORDEM CRESCENTE:');
			writeln;
			write('|');
			for I := 1 to 100 do
				begin
					write(V[I]:3, '|');
					C := C + 1;
					if (C >= 20) and (D < 4) then
						begin
							writeln;
							write('|');
							C := 0; D := D + 1;
						end;
				end;
		writeln;
		writeln;
		write('[ESC] Sair   [Enter] Continuar: ');
		OP := ord(readkey);
		clrscr;
		end;
	until OP = 27;
End.