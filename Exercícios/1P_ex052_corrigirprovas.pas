Program ex052_corrigirprovas;
uses crt;
var GAB, RESP : array[1..8] of char;
		N, PTS, TAP, I, J : integer;
		PAP               : real; 

Begin
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('                 GABARITO DA PROVA                '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln;
	for I := 1 to 8 do
		begin
			write(' Resposta da questão ', I,': ');
			readln(GAB[I]);
		end;
	clrscr;
	TAP := 0;
	for I := 1 to 10 do
		begin
			textcolor(14);
			writeln('__________________________________________________');  
			writeln('                 PROVA DOS ALUNOS                 '); 
			writeln('__________________________________________________'); 
			textcolor(15);
			writeln;
			write(' Digite o número do ', I, 'º aluno: ');
			readln(N);
			writeln;
			PTS := 0;
			for J := 1 to 8 do
				begin
					write(' Resposta do aluno ', N, ' à ', J, 'ª questão: ');
					readln(RESP[J]);
					if (RESP[J] = GAB[J]) then
						PTS := PTS + 1;
				end;
			clrscr;
			textcolor(14);
			writeln('__________________________________________________');  
			writeln('                RESULTADO DO ALUNO                '); 
			writeln('__________________________________________________'); 
			textcolor(15);
			writeln;
			writeln(' A nota do aluno ', N, ' foi de ', PTS, 'pts.');
			writeln;
			write(' Qualquer tecla para continuar...');
			readln;
			clrscr;
			if (PTS >= 6) then
				TAP := TAP + 1;
		end;
	PAP := TAP * 10;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('                 RESULTADO GERAL                  '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln;
	writeln(' Percentual de aprovados: ', PAP:0:2, '%.');			
	readln;
End.