Program ex060_correcaoprovas;
uses crt;
var GAB                      : array[1..5] of char;
		RESP                     : char;
		NA, NOTA                 : array[1..100] of integer;
		I, J, NMA, MAIOR, AP, TA : integer;
Begin
	clrscr;
	textcolor(14);
	writeln('_________________________________________________');
	writeln('                GABARITO DA PROVA                ');
	writeln('_________________________________________________');
	textcolor(15);
	writeln;
	for I := 1 to 5 do
		begin
			write(' Resposta para ', I, 'ª pergunta: ');
			textcolor(10);
			readln(GAB[I]);
			textcolor(15);
		end;
	MAIOR := 0; AP := 0; TA := 0;
	for I := 1 to 100 do
		begin
			clrscr;
			textcolor(14);
			writeln('_________________________________________________');
			writeln('                      ALUNOS                     ');
			writeln('_________________________________________________');
			textcolor(15);
			writeln(' Para finalizar, digite 999 em núm. do aluno!');
			writeln;
			write(' Número do aluno: ');
			textcolor(10);
			readln(NA[I]);
			if (NA[I] <> 999) then
				begin
					TA := TA + 1;
					textcolor(15);
					for J := 1 to 5 do
						begin
							write(' Resposta do aluno ', NA[I],' para ', J, 'ª pergunta: ');
							textcolor(10);
							readln(RESP);
							textcolor(15);
							if (RESP = GAB[J]) then
								NOTA[I] := NOTA[I] + 2;
						end;
					if (NOTA[I] > MAIOR) then
						begin
							MAIOR := NOTA[I];
							NMA := NA[I];
						end;
					if (NOTA[I] >= 6) then
						AP := AP + 1;
				end
			else break;
		end;
		clrscr;
		textcolor(14);
		writeln('_________________________________________________');
		writeln('                 RESULTADO FINAL                 ');
		writeln('_________________________________________________');
		textcolor(15);
		writeln;
		if (TA > 0) then
			begin
				for I := 1 to TA do
					begin
						writeln(' Nota do aluno núm. ', NA[I], ': ', NOTA[I], 'pts.');
					end;
				textcolor(14);
				writeln('_________________________________________________');
				textcolor(15);
				writeln;
				writeln(' Número aluno com maior nota: ', NMA);
				writeln(' Percentual de aprovação: ', (AP*100/TA):0:2, '%.');
				writeln;
			end;
	textcolor(14);
	writeln('_________________________________________________');
	textcolor(15);
	write(' Qualquer tecla para sair... ');
  readln;
End.