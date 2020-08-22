Program EU_estudoProva005;
uses crt;
var V       : array[1..20] of integer;
	  C, I, J, N : integer;
Begin
	clrscr;
	textcolor(15);
	for I := 1 to 20 do
  	begin
  		clrscr;
  		write(I, 'º valor: ');
  		readln(N);
  		for J := 1 to I do
  			begin
  				while N = V[J] do
  					begin
  						clrscr;
  						writeln('Valor já existente.');
							write('Digite novamente o ', I, 'º valor: ');
  						readln(N);
  						J := 1;
  					end;
  			end;
  		V[I] := N;
  	end;
  clrscr;
  write('VETOR: ');
  for I := 1 to 20 do
  	begin
  		write(V[I], ' ');
  	end;
  readln;
End.