Program ex055_relatorionotas;
uses crt;
var NOME            : array[1..6] of string;
		NOTA1, NOTA2, M : array[1..6] of real;
		SM              : real;
		I, AP           : integer;
Begin
	SM := 0;
	for I := 1 to 6 do
		begin
			clrscr;
			textcolor(14);
			writeln('__________________________________________________');  
			writeln('                RELATÓRIO DE NOTAS                '); 
			writeln('__________________________________________________'); 
			textcolor(15);
			writeln;
			write(' Nome do ', I, 'º aluno: ');
			readln(NOME[I]);
			write(' Primeira nota: ');
			readln(NOTA1[I]);
			write(' Segunda nota : ');
			readln(NOTA2[I]);
			M[I] := (NOTA1[I] + NOTA2[I])/2;
			SM := SM + M[I];
		end;
	clrscr;
	textcolor(14);
	writeln('__________________________________________________');  
	writeln('                  RELATÓRIO FINAL                 '); 
	writeln('__________________________________________________'); 
	textcolor(15);
	writeln;
	AP := 0;
	for I := 1 to 6 do
		begin
			write(' Aluno: ', NOME[I]:10, ' | Nota 1: ', NOTA1[I]:0:2, ' | Nota 2: ', NOTA2[I]:0:2, ' | Média: ', M[I]:0:2);
			if M[I] >= 6 then
				begin
					writeln(' | Aluno Aprovado!');
					AP := AP + 1;
				end
			else writeln(' | Aluno Reprovado!');
		end;
	textcolor(14);
	writeln('__________________________________________________');
	textcolor(15);
	writeln;
	writeln(' Média da turma: ', (SM/6):0:2, 'pts.');
	writeln(' Percentual de aprovação: ', (AP * 100 / 6):0:2, '%.');
	readln;
End.