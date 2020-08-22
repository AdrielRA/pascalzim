Program tb002_vetorsemrepetirvalores;
uses crt;
var N         : array[1..10] of integer;
		I, J, NUM : integer;
		OK        : boolean;
Begin
	clrscr;
	textcolor(14);
	writeln('_________________________________________________');
	writeln('         LEND0 10 NÚMEROS INTEIROS               ');
	writeln('_________________________________________________');
	writeln;
	for I := 1 to 10 do
		begin
			textcolor(15);
			write(' Digite o ', I, 'º número: ');
			textcolor(10);
			readln(NUM); 
			textcolor(15);
			repeat
				begin
					OK := True;
					for J := 1 to I-1 do
						begin
							if NUM = N[J] then
								begin
									OK := False;
									textcolor(14);
									writeln('Valor repetido!');
									write('Digite novamente o ', I, 'º número: ');
									textcolor(12);
									readln(NUM); 
									textcolor(15);
								end;
						end;
				end;
			until OK = True;
			N[I] := NUM;
		end;
	clrscr;
	textcolor(14);
	writeln('_________________________________________________');
	writeln('                     RESULTADO                   ');
	writeln('_________________________________________________');
	textcolor(15);
	writeln;	
	write(' VETOR: ');
	for I := 1 to 10 do
		begin
			write(N[I], '|');
		end;
  readln;
End.