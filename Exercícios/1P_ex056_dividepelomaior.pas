Program ex056_dividepelomaior;
uses crt;
var VET  : array[1..15] of integer;
		RES  : array[1..15] of real;
		I, M : integer;
Begin
  clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('     DIVIDE VALORES PELO MAIOR VALOR DIGITADO     '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln;
	M := 1;
	for I := 1 to 15 do
		begin
			write(' Digite o ', I, 'º valor: ');
			readln(VET[I]);
			if (VET[I] > M) then
				M := VET[I];
		end;
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('     DIVIDE VALORES PELO MAIOR VALOR DIGITADO     '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln;
	writeln(' Vetor resultante:');
	writeln;
	write(' |');
	for I := 1 to 15 do
		begin
			RES[I] := VET[I]/M;
			write(RES[I]:0:2, '|');
			if (I = 7) then
				begin
					writeln;
					write(' |');
				end;
		end;
	readln;
End.