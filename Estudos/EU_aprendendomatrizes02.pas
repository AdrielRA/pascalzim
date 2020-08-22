Program aprendendomatrizes02;
uses crt;
var MAT : array[1..100,1..100] of integer;
		L, C, N, A, B, NC, NL : integer;
		OK : boolean;
Begin
	clrscr;
	textcolor(15);
  writeln(' APRENDENDO MATRIZES 2');
  writeln;
	write(' Quantidade de linhas: ');
	readln(NL);
	write(' Quantidade de colunas: ');
	readln(NC);
	writeln('___________________________');
	writeln;
  for L := 1 to NL do
   for C := 1 to NC do
   	begin
   		write(' Digite um valor para a posição ', L, 'x', C, ': ');
   		readln(N);
   		repeat
   			begin
   				OK := True;
   				for A := 1 to L do
   					begin
	   					for B := 1 to NC do 
	   						begin
	   							if (N = MAT[A,B]) then
	   								begin
											OK := False;  
	   									writeln(' Número já digitado!');
	   									write(' Digite um valor para a posição ', L, 'x', C, ': '); 
	   									readln(N);
	   								end;
			   				end; 
	   				end;
   			end;
   		until OK = True;
   		MAT[L,C] := N;
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