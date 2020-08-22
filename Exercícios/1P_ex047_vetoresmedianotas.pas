Program ex047_vetoresmedianotas;
uses crt;
var NOME        : array[1..10] of string;
    N           : array[1..10] of real;
    M           : array[1..10] of real;
    SN, SM, MT  : real;
    C, I, L, MM : integer;
Begin
  clrscr;
  SM := 0;
  for C := 1 to 10 do
    begin
      SN := 0;
      textcolor(14);
      writeln(' ______________________________________________');
      writeln('|            VETORES EM SALA DE AULA           |');
      writeln('|______________________________________________|');
      textcolor(15);
      writeln;
      write(' Nome do ', C,'º aluno: ');
      textcolor(10);
      readln(NOME[C]);
      textcolor(15);
      while (length(NOME[C]) > 16) do
      	begin
      		textcolor(12);
      		writeln(' Digite nomes com menos de 18 letras!');
      		textcolor(15);
					write(' Nome do ', C,'º aluno: ');
      		textcolor(10);
      		readln(NOME[C]);
      		textcolor(15);	
        end;
      NOME[C][1] := upcase(NOME[C][1]);
			for I := 1 to length(NOME[C]) do
				begin
					if (NOME[C][I] = ' ') then
						NOME[C][I+1] := upcase(NOME[C][I+1]);
				end;
      for I := 1 to 10 do
        begin
          write(' ', I:2:0, 'ª nota: ');
          textcolor(10);
          readln(N[I]);
          textcolor(15);
          while (N[I] < 0) or (N[I] > 10) do
          	begin
          		textcolor(12);
          		writeln(' NOTA INVÁLIDA!');
          		textcolor(15);
          		write(' Digite novamente a ', I, 'ª nota: ');
          		textcolor(10);
          		readln(N[I]);
          		textcolor(15);
          	end;
          SN := SN + N[I];
        end;
      M[C] := SN / 10;
      SM := SM + M[C];
      textcolor(14);
      writeln('_______________________________________________');
      textcolor(15);
      writeln;
      write(' Qualquer tecla para continuar... ');
      readln;
      clrscr;
    end;
  MT := SM / 10;
  textcolor(14);
  writeln(' ______________________________________________');
  writeln('|                                              |');
  writeln('|              LISTAGEM DE ALUNOS              |');
  writeln('|______________________________________________|');
  writeln('|                                              |');
  write('|             ');
  textcolor(15);
	write('MÉDIA DA TURMA: ');
	textcolor(11);
	write(MT:4:2, 'pts');
	textcolor(14);
	writeln('          |');
  writeln('|______________________________________________|');
  writeln('|                  |         |                 |');
  writeln('|       ALUNO      |  MÉDIA  |     SITUAÇÃO    |');
  writeln('|__________________|_________|_________________|');
  writeln('|                  |         |                 |');
  for C := 1 to 10 do
    begin
      write('| ');
      textcolor(15);
			write(NOME[C]:16);
			textcolor(14);
			write(' | ');
			textcolor(15);
			write(M[C]:0:2, 'pts ');
			textcolor(14);
			write('|');
        if (M[C] > MT) then
          begin
          	textcolor(10);
            write(' ACIMA DA MÉDIA! ');
            textcolor(14);
						writeln('|');
            MM := MM + 1;
          end
        else if (M[C] = MT) then
          begin
            textcolor(15);
            write(' NA MÉDIA EXATA! ');
            textcolor(14);
						writeln('|');
          end
        else
        	begin
	        	textcolor(12);	        	
            write(' MÉDIA INFERIOR! ');
            textcolor(14);
						writeln('|');
          end;
    end;
  textcolor(14);
  writeln('|__________________|_________|_________________|');
	writeln('|                                              |');
  write('|      ');
  textcolor(15);
	write('Número de alunos acima da média: ');
	if (MM > 5) then
		textcolor(10)
	else if (MM = 5) then
		textcolor(15)
	else textcolor(12);
	write(MM);
	textcolor(14);
	writeln('      |');
  writeln('|______________________________________________|');
  textcolor(15);
  writeln;
  write(' Qualquer tecla para sair... ');
  readln;
End.