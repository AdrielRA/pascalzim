Program aprendendomatrizes04;
uses crt;
var MAT  : array[1..100,1..100] of integer;
		L, C, NL, NC, SDP, P2L, MAIOR : integer;
Begin
	clrscr;
	textcolor(15);
  writeln(' APRENDENDO MATRIZES 4');
  writeln;
	write(' Quantidade de linhas: ');
	readln(NL);
	write(' Quantidade de colunas: ');
	readln(NC);
	writeln('___________________________');
	writeln;
	SDP := 0;
	P2l := 1;
	MAIOR := 0;
	for L := 1 to NL do
   for C := 1 to NC do
   	begin
   		write(' Digite um valor para a posição ', L, 'x', C, ': '); 
			readln(MAT[L,C]);  		
   	end;
  clrscr;
  for L := 1 to NL do
   for C := 1 to NC do
   	begin
   		if L = C then
				SDP := SDP + MAT[L,C];
			if L = 2 then
				P2L := P2L * MAT[L,C];
			if C = 3 then
				if MAT[L,C] > MAIOR then
					MAIOR := MAT[L,C];		
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
				if L = C then
					write('{',MAT[L,C], '}|')
				else
					write(' ',MAT[L,C], ' |');
			writeln;
			write(' |');
			for C := 1 to NC do
				write('___|'); 
			writeln;
		end;
	writeln;
	writeln(' Soma da diagonal principal é igual: ', SDP);
	writeln(' Produto dos valores da 2ª linha é : ', P2L);
	writeln(' O maior valor da terceira coluna é: ', MAIOR);
	readln;
End.