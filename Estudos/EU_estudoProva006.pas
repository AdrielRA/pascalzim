Program EU_estudoProva006;
uses crt;
var V : array [1..50] of integer;
		I : integer;
Begin
	clrscr;
	textcolor(15);
	for I := 1 to 50 do
			V[I] := (I+5*I)mod(I+1);
	write('VETOR RESULTANTE: ');
	for I := 1 to 50 do
		write(V[I], ' ');
	readln;  
End.