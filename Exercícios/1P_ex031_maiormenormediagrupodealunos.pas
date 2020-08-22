Program ex031_maiormenormediagrupodealunos;
var NUMA, I                  : integer;
		NOTA, SNOTA, M, MAM, MEM : real;
		NOME, NOMEMAM, NOMEMEM   : string;
Begin
	writeln('___________________________________________');  
	writeln('       CALCULANDO MÉDIA DE CADA ALUNO      '); 
	writeln('___________________________________________'); 
	writeln;
	write('Número de alunos na turma: ');
	readln(NUMA);
	writeln('___________________________________________');
	writeln;
	MAM := 0;
	MEM := 0;
	for I := 1 to NUMA do
		begin
			SNOTA := 0;
			write('Digite o nome do ', I, 'º aluno: ');
			readln(NOME);
			write('Digite a 1ª nota desse aluno: ');
			readln(NOTA);
			SNOTA := SNOTA + NOTA;
			write('Digite a 2ª nota desse aluno: ');
			readln(NOTA);
			SNOTA := SNOTA + NOTA;
			M := SNOTA / 2;
			writeln;
			writeln('___________________________________________');
			writeln;
			writeln('Média de ', NOME, ': ', M:0:2, 'pts.');
			writeln('___________________________________________');
			writeln;
			if M > MAM then
				begin
					MAM := M;
					NOMEMAM := NOME;
					if MEM = 0 then
						MEM := M;
				end;
			if M < MEM then
				begin
					MEM := M;
					NOMEMEM := NOME;
				end;
		end;
	writeln;
	writeln('A maior média foi de ', NOMEMAM, ' com ', MAM:0:2, 'pts.');
	writeln('A menor média foi de ', NOMEMEM, ' com ', MEM:0:2, 'pts.');
	writeln;
	writeln('___________________________________________');
	writeln('      ***** PROGRAMA FINALIZADO *****      ');
	writeln;
	readln;
End.