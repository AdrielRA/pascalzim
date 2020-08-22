Program ex058_maiordiferencaconsecutivo;
uses crt;
var VET: array[1..10] of integer;
		I, D, M  : integer;
Begin
	clrscr;
	textcolor(14);
	writeln('_________________________________________________');
	writeln('             MAIOR DIFERENÇA VALORES             ');
	writeln('_________________________________________________');
	writeln;
	textcolor(15);
	for I := 1 to 10 do
		begin
			write(' Digite o ', I, 'º valor: ');
			textcolor(10);
			readln(VET[I]);
			textcolor(15);
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
	textcolor(14);
	writeln('_________________________________________________');
	textcolor(15);
	write(' Maior diferença: ', M);
	readln;
End.