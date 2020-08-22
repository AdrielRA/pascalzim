Program ex050_vetordecrescente;
uses crt;
var VET       : array[1..10] of integer;
		I, J, AUX : integer;
Begin
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('                 ORDEM DECRESCENTE                '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln; 
	for I := 1 to 10 do
		begin
			write(' Digite o ', I, 'º valor: ');
			textcolor(10);
			readln(VET[I]);
			textcolor(15);
		end;
	for I := 1 to 10 do
		begin
			for J := 1 to 9 do
				begin
					if (VET[J] < VET[J+1]) then
						begin
							AUX := VET[J];
							VET[J] := VET[J+1];
							VET[J+1] := AUX;
						end;
				end;
		end;
	textcolor(14);
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln;
	write(' Vetores ordenados: |');
	for I := 1 to 10 do
		begin
			write(VET[I], '| ');
		end;
	readln;
End.