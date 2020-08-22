Program aprendendomatrizes03;
uses crt;
var MAT : array[1..100,1..100] of integer;
		L, C, NC, NL, TP : integer;
Begin
	clrscr;
	textcolor(15);
  writeln(' APRENDENDO MATRIZES 3');
  writeln;
	write(' Quantidade de linhas: ');
	readln(NL);
	write(' Quantidade de colunas: ');
	readln(NC);
	writeln('___________________________');
	writeln;
	TP := 0;
  for L := 1 to NL do
   for C := 1 to NC do
   	begin
   		write(' Digite um valor para a posição ', L, 'x', C, ': '); 
			readln(MAT[L,C]);  		
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
			write(' |');
			for C := 1 to NC do
				if ((MAT[L,C])mod(2) = 0) then
					begin
						write('{',MAT[L,C], '}|');
						TP := TP + 1;
					end
				else write(' ',MAT[L,C], ' |');
			writeln;
			write(' |');
			for C := 1 to NC do
				write('___|'); 
			writeln;
		end;
	writeln;
	write(' Total de pares encontrados: ', TP);	
	readln;
End.