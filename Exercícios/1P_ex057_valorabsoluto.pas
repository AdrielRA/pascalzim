Program maiordiferencaconsecutivo;
uses crt;
var VET: array[1..10] of integer;
		I, D, M  : integer;
Begin
	clrscr;
	textcolor(14);
	for I := 1 to 10 do
		begin
			write(' Digite o ', I, 'º valor: ');
			readln(VET[I]);
		end;
	M := 0;
	for I := 1 to 9 do
		begin
			D := abs(VET[I]-VET[I+1]);
			if (D > M) then
				begin
					M := D;
				end;
		end;
	write(' Maior diferença: ', M);
	readln;
End.