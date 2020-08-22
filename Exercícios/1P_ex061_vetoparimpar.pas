Program ex061_vetoparimpar;
uses crt;
var V1, PAR, IMPAR : array[1..10] of integer;
		V2             : array[1..5] of integer;
		L, M, S, CP, CI   : integer;
		
Begin
	clrscr;
	textcolor(15);
	writeln('_________________________________________________');
	writeln('               PRENCHENDO O VETOR 1              ');
	writeln('_________________________________________________');
	writeln;
	for L := 1 to 10 do
		begin
			write(' Digite o ', L, 'º valor: ');
			readln(V1[L]);
		end;
	clrscr;
	writeln('_________________________________________________');
	writeln('               PRENCHENDO O VETOR 2              ');
	writeln('_________________________________________________');
	writeln;
	for L := 1 to 5 do
		begin
			write(' Digite o ', L, 'º valor: ');
			readln(V2[L]);
		end;
	CP := 1;
	CI := 1;
  for L := 1 to 10 do
  	begin
  		S := V1[L];
  		for M := 1 to 5 do
  			S := S + V2[M];
			if ((S)mod(2) = 0) then
  			begin
  				PAR[CP] := S;
  				CP := CP + 1;
  			end
  		else
  			begin
  				IMPAR[CI] := S;
  				CI := CI + 1;
  			end;
  	end;
	clrscr;
	writeln('_________________________________________________');
	writeln('               VETORRES RESULTANTES              ');
	writeln('_________________________________________________');
	writeln;
	write(' VETOR PARES:   ');
	for L := 1 to CP-1 do
		begin
			write(PAR[L], ' ');
		end;
	writeln;
	writeln;
	write(' VETOR ÍMPARES: ');
	for L := 1 to CI-1 do
		begin
			write(IMPAR[L], ' ');
		end;
	readln;
End.
