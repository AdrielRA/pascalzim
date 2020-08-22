Program ex033_mediaparesconjuntofinalizacom0;
uses crt;
var N, SP, M, C : integer;
		OP          : boolean;
Begin
	textcolor(15);
	OP := True;
	SP := 0;
	C := 0;
	writeln;
	writeln('___________________________________________');
	writeln('    MÉDIA ENTRE NÚMEROS PARES DIGITADOS    ');
	writeln('Tecle 0 para finalizar o conjunto númerico.');
	writeln('___________________________________________');
	writeln;
	while OP do
		begin
			write('Entre com um número: ');
			textcolor(10);
			readln(N);
			textcolor(15);
			if (N <> 0) then
				begin
					if ((N)mod(2) = 0) then
						begin
							SP := SP + N;
							C := C + 1;
						end;
				end
			else
				begin
					OP := False;
					if (C = 0) then
						C := 1;
				end;
		end;
	writeln;
	writeln('___________________________________________');
	writeln('A média dos pares digitados é: ', (SP/C):0:2);
	writeln('___________________________________________');
  readln;
End.