Program ex053_alunoscursando;
uses crt;
var ALO  : array[1..15] of integer;
		ALP  : array[1..10] of integer; 
		I, J : integer;
Begin
		clrscr;
		textcolor(14);
		writeln('__________________________________________________');  
		writeln('              ALUNOS CURSANDO L�GICA              '); 
		writeln('__________________________________________________'); 
		textcolor(15);
		writeln;
		for I := 1 to 15 do
			begin
				write(' N�mero de matricula do ', I, '� aluno: ');
				readln(ALO[I]);
			end;
		clrscr;
		textcolor(14);
		writeln('__________________________________________________');  
		writeln('            ALUNOS CURSANDO LING. PROG.           '); 
		writeln('__________________________________________________'); 
		textcolor(15);
		writeln;
		for I := 1 to 10 do
			begin
				write(' N�mero de matricula do ', I:2:0, '� aluno: ');
				readln(ALP[I]);
			end;
		clrscr;
		textcolor(14);
		writeln('__________________________________________________');  
		writeln('           ALUNOS MATRICULADOS EM AMBAS           '); 
		writeln('__________________________________________________'); 
		textcolor(15);
		writeln;
	  for I := 1 to 10 do
	  	begin
	  		for J := 1 to 15 do
	  			begin
	  				if (ALP[I] = ALO[J]) then
	  					writeln(' N� de matr�cula: ',ALP[I]);
	  			end;
	  	end;
	  readln;
End.