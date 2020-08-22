Program EU_torneiofutebol;
uses crt;
var TIME : array[1..3] of string;
		I, J : integer;
Begin
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');
	writeln('               CAMPEONATO DE FUTEBOL              ');
	writeln('__________________________________________________');
	writeln;
	for I := 1 to 3 do
		begin
			textcolor(15);
			write(' Nome do ', I, 'º time: ');
			textcolor(10);
			readln(TIME[I]);
			TIME[I][1] := upcase(TIME[I][1]);
			for J := 1 to length(TIME[I]) do
				begin
					if (TIME[I][J] = ' ') then
						TIME[I][J+1] := upcase(TIME[I][J+1]);
				end;
			textcolor(15);
		end;
	textcolor(14);
	writeln('__________________________________________________');
	textcolor(15);
	writeln;
	write( ' Qualquer tecla para continuar... ');
	readln;
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');
	writeln('                TABELA DE PARTIDAS                ');
	writeln('__________________________________________________');
	textcolor(15);
	writeln;
	for I := 1 to 3 do
		begin
			for J := 1 to 3 do
				begin
					if (I <> J) then
						writeln(TIME[I]:20, ' [ ] x [ ] ', TIME[J]);
				end;
		end;
	textcolor(14);
	writeln('__________________________________________________');
	textcolor(15);
	writeln;
	write( ' Qualquer tecla para sair... ');
	readln;  
End.