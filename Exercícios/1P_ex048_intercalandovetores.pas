Program ex048_intercalandovetores;
uses crt;
var VET1, VET2: array[1..10] of integer;
		VET3      : array[1..20] of integer;
		I, J      : integer;
Begin
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('               INTERCALANDO VETORES               '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln; 
	J := 1;
	for I := 1 to 10 do
		begin
			write(' Vet. 1 na posição ', I, ': ');
			textcolor(10);
			readln(VET1[I]);
			textcolor(15);
			VET3[J] := VET1[I];
			J := J + 1;
			write(' Vet. 2 na posição ', I, ': ');
			textcolor(10);
			readln(VET2[I]);
			textcolor(15);
			VET3[J] := VET2[I];
			J := J + 1;
		end;
	textcolor(14);
	writeln('__________________________________________________');
	textcolor(15); 
	writeln;
	writeln(' Vetor resultante:');
	writeln;
	write(' |');
	for I := 1 to 20 do
		begin
			write(VET3[I], '|');
		end;
	readln;
End.