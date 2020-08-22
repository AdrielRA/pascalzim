Program ex054_vetorespareseimpares;
uses crt;
var VET, PAR, IMPAR : array[1..10] of integer;
		I, J, K         : integer;
Begin
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('             SEPARANDO PARES E IMPARES            '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln;
	J := 1;
	K := 1;
	for I := 1 to 10 do
		begin
			write(' Digite o ', I, 'º valor: ');
			readln(VET[I]);
			if ((VET[I])mod(2) = 0) then
				begin
					PAR[J] := VET[I];
					J := J + 1;
				end
			else
				begin
					IMPAR[K] := VET[I];
					K := K + 1;
				end;
		end;
	writeln;
	write(' Vetor par  : |');
	for I := 1 to J-1 do
		begin
			write(PAR[I],'|');
		end;
	writeln;
	write(' Vetor impar: |');
	for I := 1 to K-1 do
		begin
			write(IMPAR[I],'|');
		end;
	readln;
End.