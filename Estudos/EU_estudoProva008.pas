Program EU_estudoProva008;
uses crt;
var V : array[1..100] of integer;
		N, I, OP : integer;
Begin
	clrscr;
	textcolor(15);
	repeat
		begin
			N := 0;
			for I := 1 to 100 do
				begin
					while True do
						begin
							if ((N)mod(7) = 0) or ((N)mod(10) = 7) then
								inc(N)
							else
								begin
									V[I] := N;
									inc(N);
									break;
								end;							
						end;
				end;
			writeln('VETOR: ');
			for I := 1 to 100 do
				begin
					write(V[I]:3, ' ');
				end;
			writeln;    
			writeln;
			write('[ESC] Sair [ENTER] Continuar: ');
			OP := ord(readkey);
			clrscr;
		end;
	until OP = 27;
End.