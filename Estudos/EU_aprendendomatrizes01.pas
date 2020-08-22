Program ma01_aprendendomatriz;
uses crt;
var MAT  : array[1..100,1..100] of integer;
		L, C, NL, NC : integer;
Begin
	clrscr;
	textcolor(15);
	writeln(' APRENDENDO MATRIZES');
	writeln;
	write(' Quantidade de linhas: ');
	readln(NL);
	write(' Quantidade de colunas: ');
	readln(NC);
	writeln('___________________________');
	writeln;
	for L := 1 to NL do
		begin
			for C := 1 to NC do
				begin
					write(' Digite o valor da posição ', L, 'x', C, ': ');
					readln(MAT[L,C]); 
				end;
		end;
	clrscr;
	writeln(' MATRIZ RESULTANTE:');
	writeln;
	write('  ');
	for C := 1 to NC do
		write('___ ');
	writeln;
	for L := 1 to NL do
		begin 
			write(' | ');
			for C := 1 to NC do
					write(MAT[L,C], ' | ');
			writeln;
			write(' |');
			for C := 1 to NC do
				write('___|'); 
			writeln;	
		end;
  readln;
End.