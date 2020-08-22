Program EU_leescreveumalinhadearquivo;
uses crt;
var ARQ : text;
		C, I, R: integer;
		J : string;
Begin
	repeat
		begin
			clrscr;
			textcolor(15);
			assign(ARQ, 'EU_leescreveumalinhadearquivo.txt');
			reset(ARQ);
			C := 1;
			while not eof(ARQ) do
				begin
					readln(ARQ);
					C := C + 1;
				end;
			close(ARQ);
			writeln('Número de linhas do arquivo: ', C-1);
			R := random(C);
			if R = 0 then
				begin
					R := 1;
					gotoxy(1,4);
					write('Valor aleatório era 0.');
					gotoxy(1,2);
				end;
			I := 1; 
			assign(ARQ, 'EU_leescreveumalinhadearquivo.txt');
			reset(ARQ);
			while (not eof(ARQ)) and (I <= R) do
				begin
					readln(ARQ, J);
					I := I + 1;
				end;
			close(ARQ);
			writeln('Valor aleatório: ',R);
			writeln('Dado armazenado na linha ', I-1, ': ', J);
			writeln;
			write('ESC para sair... ');
		end;
	until upcase(readkey) = #27; 
End.