Program ex062_ordenandonumerosvetor;
uses crt;
var VET     : array[1..10] of integer;
		I, J, N : integer;
Begin
	textcolor(15);
  writeln('__________________________________________________');
	writeln('               ORDENANDO 10 VETORES               ');
	writeln('__________________________________________________');
	writeln;
	for I := 1 to 10 do
		begin
			write(' Entre com o ', I, 'º valor: ');
			readln(N);
			J := I-1;
			while (J > 0) and (N < VET[J]) do
				begin
					VET[J+1] := VET[J];
					J := J-1;
				end;
			VET[J+1] := N;
		end;
	writeln('__________________________________________________');
	writeln;
	write(' VETORES ORDENADOS: ');
	for I := 1 to 10 do
		write(VET[I], ' | ');	
  readln;
End.