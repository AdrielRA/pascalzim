Program ex049_vetorposneg;
uses crt;
var NUM, P, N       : array[1..8] of integer;
		I, CONT, CP, CN : integer;
Begin
	CN := 1; CP := 1;
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('          SEPARANDO POSITIVOS E NEGATIVOS         '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln; 
	for I := 1 to 8 do
		begin
			write(' Digite o ', I,'º valor: ');
			readln(N[I]);
			if (N[I] >= 0) then
				begin
					P[CP] := N[I];
					CP := CP + 1;
				end
			else
				begin
					N[CN] := N[I];
					CN := CN + 1;
				end;
		end;
	writeln;
	if (CN = 1) then
		begin
			writeln(' Vetor de negativos vazio!');
		end
	else
		begin
			write(' Negativos: |');
			for I := 1 to CN - 1 do
				begin
					write(N[I], '|');
				end;
		end;
	writeln;
	if (CP = 1) then
		begin
			writeln(' Vetor de positivos vazio!');
		end
	else
		begin
			write(' Positivos: |');
			for I := 1 to CP - 1 do
				begin
					write(' ',P[I], '|');
				end;
		end;
	readln;
End.