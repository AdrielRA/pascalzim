Program ex040_exponenciacao;
uses crt;
var I, B, E, R : longint;
		OP         : boolean;
		P          : char;
Begin
	OP := True;
	while OP do
		begin
			clrscr;
			textcolor(14);
			writeln('___________________________________________');
			writeln('    CALCULANDO EXPONENCIAÇÃO SEM FUNÇÕES   ');
			writeln('___________________________________________');
			writeln;
			textcolor(15);
			write('Base.....: ');
			textcolor(10);
			readln(B);
			textcolor(15);
			write('Expoente.: ');
			textcolor(10);
			readln(E);
			textcolor(15);
			R := 1;
			for I := 1 to (E) do
				R := R * B;
			textcolor(14);
			writeln('___________________________________________');
			textcolor(15);
			writeln;
			write('Resultado: ');
			textcolor(10);
			writeln(R);
			textcolor(14);
			writeln('___________________________________________');
			writeln;
			textcolor(15);
			write('Deseja continuar: [ S ] Sim [ N ] Não: ');
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
End.