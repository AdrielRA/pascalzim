Program EU_corrigindoprovas;
uses crt;
var GAB                 : array[1..5] of char;
		NOME                : array[1..3] of string;
		ACERTOS             : array[1..3] of integer;
		RESP                : char;
		A, B, C, I, TACERTO : integer;
Begin
	clrscr;
	TACERTO := 0;
	textcolor(14);
	writeln(' ________________________________________________ ');
	writeln('|              CADASTRO DE GABARITO              |');
	writeln('|________________________________________________|');
	textcolor(15);
	writeln;
	for A := 1 to 5 do
		begin
			write(' Questão ', A, ': ');
			readln(GAB[A]);
			GAB[A] := upcase(GAB[A]);
		end;
	clrscr;
	for A := 1 to 3 do
		begin
			I := 0;
			textcolor(14);
			writeln(' ________________________________________________');
			writeln('|                     ALUNO ', A, '                    |');
			writeln('|________________________________________________|');
			textcolor(15);
			writeln;
			write(' Nome: ');
			textcolor(10);
			readln(NOME[A]);
			NOME[A][1] := upcase(NOME[A][1]);
			for B := 1 to length(NOME[A]) do
				begin
					if (NOME[A][B] = ' ') then
						NOME[A][B+1] := upcase(NOME[A][B+1]);
				end;
			textcolor(14);
			writeln(' ________________________________________________');
			writeln('|                    RESPOSTAS                   |');
			writeln('|________________________________________________|');
			textcolor(15);
			writeln;
			for B := 1 to 5 do
				begin
					write(' Questão ', B, ': ');
					readln(RESP);
					RESP := upcase(RESP);
					if RESP = GAB[B] then
						I := I + 2;
				end;
			ACERTOS[A] := I;
			TACERTO := TACERTO + I;
		end;
	clrscr;
	textcolor(14);
	writeln(' ________________________________________________ ');
	writeln('|                  NOTAS FINAIS                  |');
	writeln('|________________________________________________|');
	writeln('|                                                | ');
	textcolor(15);
	for A := 1 to 3 do
		begin
			writeln('| Aluno: ', NOME[A]:14, ' Acertos: ', ACERTOS[A]:2:0, '               |');
		end;
	textcolor(14);
	writeln('|________________________________________________|');
	textcolor(15);
	writeln('|             Média da turma: ', (TACERTO/3):5:2, '              |');
	textcolor(14);
	writeln('|________________________________________________|');
	textcolor(15);
	writeln;	
  readln;
End.