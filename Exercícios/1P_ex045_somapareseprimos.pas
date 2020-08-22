Program ex045_somapareseprimos;
uses crt;
var I, C, P, DIVISIVEL, NUM, NNUM, SPAR, SPRIMO: integer;
Begin
	DIVISIVEL := 0; SPAR := 0; SPRIMO := 0; NNUM := 0;
	textcolor(14);
	writeln('__________________________________________________');
	writeln('            SOMA NÚMEROS PARES E PRIMOS           ');
	writeln('__________________________________________________');
	writeln(' Digite 10 números inteiros, e veja o resultado!  ');
	textcolor(15);
	writeln;
	for I := 1 to 10 do
		begin
			DIVISIVEL := 0;
			write(' Digite o ', i:2:0, 'º número: ');
			textcolor(10);
			readln(NUM);
			textcolor(15);
			NNUM := NUM;
			if NNUM < 0 then  // Núm. negativo também pode ser primo ou par
				NNUM := -NNUM;    // Se negativo então multiplica por -1
			if ((NNUM)mod(2) = 0) then // e continua normalmente
				SPAR := SPAR + NUM;
			C := -NNUM;
			for C := C to NNUM do 
				begin
					P := C;
					if P < 0 then
						P := -P;
					if C <> 0 then
						if ((NNUM)mod(P) = 0) then
							DIVISIVEL := DIVISIVEL + 1;
				end;
			if (DIVISIVEL = 4) then
				SPRIMO := SPRIMO + NUM;
		end;
	textcolor(14);
	writeln('__________________________________________________');
	textcolor(15);
	writeln;
	writeln(' Soma dos números PARES : ', SPAR);
	writeln(' Soma dos números PRIMOS: ', SPRIMO);
	textcolor(14);
	writeln('__________________________________________________');
	textcolor(15);
	write(' Pressione qualquer tecla para sair...');
  readln;
  clrscr;
End.