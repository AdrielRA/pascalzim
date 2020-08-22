Program ex042_contagemdevotos;
uses crt;
var	VOTO, LOOP                         : boolean;
		OPMENU, V1, V2, V3, V4, VN, VB, TV : integer;
		OPSAIR                             : char;	
Begin
	LOOP := True;
	while LOOP do
		begin
			V1 := 0; V2 := 0; V3 := 0; V4 := 0; VN := 0; VB := 0; TV := 0;
			textcolor(14);
			writeln('_________________________________________________');
			writeln('                CONTAGEM DE VOTOS                ');
			writeln('_________________________________________________');
			textcolor(15);
			writeln(' Use apenas os códigos: ');
			writeln;
			writeln(' [ 1 ] Candidato A');
			writeln(' [ 2 ] Candidato B');
			writeln(' [ 3 ] Candidato C');
			writeln(' [ 4 ] Candidato D');
			writeln(' [ 5 ] Voto Nulo  ');
			writeln(' [ 6 ] Voto Branco');
			writeln(' [ 7 ] Finalizar  ');
			textcolor(14);
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			VOTO := True;
			while VOTO do
				begin
					write(' Seu Voto: ');
					textcolor(10);
					readln(OPMENU);
					textcolor(15);
					case OPMENU of
						1: V1 := V1 + 1;
						2: V2 := V2 + 1;	
						3: V3 := V3 + 1;
						4: V4 := V4 + 1;
						5: VN := VN + 1;
						6: VB := VB + 1;
						7: VOTO := False;
						else
							begin
								textcolor(12);
								writeln(' Opção inválida!');
								textcolor(15);
							end;
					end;
				end;
			clrscr;
			TV := TV + V1 + V2 + V3 + V4 + VN + VB;
			if (TV <> 0) then
				begin
					textcolor(14);
					writeln('_________________________________________________');
					textcolor(15);
					writeln(' Total de votos do Candidato A: ', V1);
					writeln(' Total de votos do Candidato B: ', V2);
					writeln(' Total de votos do Candidato C: ', V3);
					writeln(' Total de votos do Candidato D: ', V4);
					writeln(' Porcentagem de votos nulos   : ', (VN/TV*100):0:2, '%.');
					writeln(' Porcentagem de votos brancos : ', (VB/TV*100):0:2, '%.');
				end;
			textcolor(14);
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			write(' Realizar outra votação? [ S ] Sim [ N ] Não: ');
			textcolor(10);
			readln(OPSAIR);
			textcolor(15);
			writeln;
			while (upcase(OPSAIR) <> 'N') and (upcase(OPSAIR) <> 'S') do
				begin
					textcolor(14);
					write(' Use apenas [ S ] Sim [ N ] Não: ');
					textcolor(10);	
					readln(OPSAIR);
					textcolor(15);
				end;
			if upcase(OPSAIR) = 'N' then
				begin
					LOOP := False;
					clrscr;
					textcolor(12);
					writeln('_________________________________________________');
					writeln('               PROGRAMA FINALIZADO               ');
					writeln('_________________________________________________');
					textcolor(15);
					readln;
					clrscr;
				end
			else
				clrscr;
		end;
End.