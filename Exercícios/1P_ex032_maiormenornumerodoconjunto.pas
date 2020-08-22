Program ex032_maiormenornumerodoconjunto;
uses crt;
var N, MAN, MEN : integer;
		OP          : boolean;
Begin
	clrscr;
	textcolor(15);
	MAN := 0;
	MEN := 0;
	OP := True;
	writeln;
	writeln('___________________________________________');
	writeln('      MAIOR E MENOR NÚMERO DO CONJUNTO     ');
	writeln('        Digite o valor -1 para sair.       ');
	writeln('___________________________________________');
	while OP do
		begin
			write('Entre com um número: ');
			textcolor(10);
			readln(N);
			textcolor(15);
			if (N <> -1)  then
				begin
					if (N > MAN) then
						begin
							MAN := N;
							if (MEN = 0) then
								MEN := N;
						end
					else if (N < MEN) then
						MEN := N;
				end
			else
				OP := False;
		end;
	if (MAN <> 0) and (MEN <> 0) then
		begin
			writeln;
			writeln('___________________________________________');
			writeln('O menor valor digitado foi: ', MEN);
			writeln('O maior valor digitado foi: ', MAN);
		end;
	writeln('___________________________________________');
	writeln('        *** PROGRAMA FINALIZADO ***        ');
  readln;
End.