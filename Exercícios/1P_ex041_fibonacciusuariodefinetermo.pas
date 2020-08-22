program ex041_fibonacciusuariodefinetermo;
uses crt;
var I, N, F, ON : Integer;
		OP          : boolean;
		P           : char;
begin
	OP := True;
	while OP do
		begin
			clrscr;
			textcolor(14);
			writeln('___________________________________________');
			writeln('           SEQUÊNCIA DE FIBONACCI          ');
			writeln('___________________________________________');
			writeln;
			textcolor(15);
			write(' Defina o primeiro termo: ');
			textcolor(10);
			readln(N);
			textcolor(15);
			write(' Defina o termo anterior: ');
			textcolor(10);
			readln(ON);
			textcolor(14);
			writeln('___________________________________________');
			textcolor(15);
		  for I := 1 to 20 do
		    begin
		      write(' ', I:2:0 , 'º termo: ');
		      textcolor(14);
		      write(N:6:0);
		      textcolor(15);
		      writeln(' |======================|');
		      F := N + ON;
		      ON := N;
		      N := F;
		    end;
		  textcolor(14);
		  writeln('___________________________________________');
		  textcolor(15);
	    write('Deseja retornar? [ S ] Sim [ N ] Não: ');
	    textcolor(10);
	    readln(P);
		  textcolor(15);
		  while (P <> 'n') and (P <> 'N') and (P <> 'S') and (P <> 's') do
				begin
					write('Use apenas [ S ] Sim [ N ] Não: ');
					textcolor(10);
					readln(P);
					textcolor(15);
				end; 
			if (P = 'n') or (P = 'N') then
				begin
					OP := False;
					clrscr;
					textcolor(12);
					writeln('___________________________________________');
					writeln('            PROGRAMA FINALIZADO            ');
					writeln('___________________________________________');
					textcolor(15);
				end;
		end;
  readln;
  clrscr;
end.
