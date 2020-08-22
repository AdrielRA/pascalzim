Program aprendendovetores;
uses crt;
var VET     : array[1..10] of integer;
		I, J, M : integer;
Begin
	textcolor(15);
  writeln('__________________________________________________');
	writeln('               ORDENANDO 10 VETORES               ');
	writeln('__________________________________________________');
	writeln;
	for I := 1 to 10 do
		begin
			write(' Entre com o ', I, 'º valor: ');
			readln(VET[I]);
		end;
	for I := 1 to 9 do
		begin
			for J := I+1 to 10 do
				begin
					if (VET[I] > VET[J]) then
						begin
							M := VET[I];
							VET[I] := VET[J];
							VET[J] := M;
						end;
				end;
		end;
	writeln('__________________________________________________');
	writeln;
	write(' VETORES ORDENADOS: ');
	for I := 1 to 10 do
		write(VET[I], ' ');	
  readln;
End.