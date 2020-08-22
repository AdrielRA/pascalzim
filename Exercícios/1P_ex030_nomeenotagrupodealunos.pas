Program ex030_nomeenotagrupodealunos;
var NUMA, I     : integer;
		NOTA, SNOTA : real;
		NOME        : string;
Begin
	writeln('___________________________________________');  
	writeln('       CALCULANDO MÉDIA DE CADA ALUNO      '); 
	writeln('___________________________________________'); 
	writeln;
	write('Número de alunos na turma: ');
	readln(NUMA);
	writeln('___________________________________________');
	writeln;
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
			writeln;
			writeln('___________________________________________');
			writeln;
			writeln('Média de ', NOME, ': ', (SNOTA / 2):0:2, 'pts.');
			writeln('___________________________________________');
			writeln;
		end;
	writeln('___________________________________________');
	writeln('      ***** PROGRAMA FINALIZADO *****      ');
	writeln;
	readln;
End.