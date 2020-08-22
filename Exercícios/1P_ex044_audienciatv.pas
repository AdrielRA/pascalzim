Program ex044_audienciatv;
uses crt;
var C4, C5, C7, C12, TOTALP, PESSOAS, OPMENU, OPSUBMENU: integer;
		LOOP, LOOPI : boolean;
Begin
	C4 := 0; C5 := 0; C7 := 0; C12 := 0; TOTALP := 0;  PESSOAS := 0;
	LOOP := True;
	while LOOP do
		begin
			textcolor(14);
			writeln('_________________________________________________');
			writeln('      PESQUISA DE AUDIÊNCIA DE CANAIS DE TV      ');
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			writeln(' [ 1 ] Nova Pesquisa');
			writeln(' [ 2 ] Sair');
			textcolor(14);
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			write(' Sua opção: ');
			textcolor(10);
			readln(OPMENU);
			textcolor(15);
			while (OPMENU < 1) or (OPMENU > 2) do
				begin
					textcolor(12);
					writeln(' Opção inválida!');
					textcolor(15);
					write(' Sua opção: ');
					textcolor(10);
					readln(OPMENU);
					textcolor(15);
				end;
			case OPMENU of
				1:
					begin
						LOOPI := True;
						while LOOPI do
							begin
								clrscr;
								textcolor(14);
								writeln('_________________________________________________');
							  textcolor(15);
							  writeln;
							  writeln(' Selecione o canal:');
								writeln;
								writeln(' [ 1 ] Canal 4');
								writeln(' [ 2 ] Canal 5');
								writeln(' [ 3 ] Canal 7');
								writeln(' [ 4 ] Canal 12');
								writeln(' [ 5 ] TV Desligada');
								writeln(' [ 6 ] Finalizar');
								textcolor(14);
								writeln('_________________________________________________');
								textcolor(15);
								writeln;
								write(' Opção de canal: ');
								textcolor(10);
								readln(OPSUBMENU);
								writeln;
								textcolor(15);
								while (OPSUBMENU < 1) or (OPSUBMENU > 6) do
									begin
										textcolor(12);
										writeln(' Opção inválida!');
										textcolor(15);
										write(' Sua opção: ');
										textcolor(10);
										readln(OPSUBMENU);
										textcolor(15);
									end;
							 	case OPSUBMENU of
									1:
										begin
							  			write(' Número de pessoas assistindo: ');
							  			textcolor(10);
							  			readln(PESSOAS);
							  			textcolor(15);
											TOTALP := TOTALP + PESSOAS;
											C4 := C4 + PESSOAS;
										end;
								  2:
								   	begin
							  			write(' Número de pessoas assistindo: ');
							  			textcolor(10);
							  			readln(PESSOAS);
							  			textcolor(15);
								   		TOTALP := TOTALP + PESSOAS;
								   		C5 := C5 + PESSOAS;
										end;
									3:
										begin
							  			write(' Número de pessoas assistindo: ');
							  			textcolor(10);
							  			readln(PESSOAS);
							  			textcolor(15);
											TOTALP := TOTALP + PESSOAS;
											C7 := C7 + PESSOAS;
										end;
									4:
										begin
							  			write(' Número de pessoas assistindo: ');
							  			textcolor(10);
							  			readln(PESSOAS);
							  			textcolor(15);
											TOTALP := TOTALP + PESSOAS;
											C12 := C12 + PESSOAS;
										end;
									6:
										begin
											LOOPI := False;
											clrscr;
										end;
								end;
							end;
						textcolor(14);
						writeln('_________________________________________________');
						textcolor(15);
						writeln;
						writeln(' Percentual de audiência por canal: ');
						writeln;
						if (TOTALP = 0) then
							TOTALP := 1;
						writeln(' Canal  4: ', (C4 / TOTALP * 100):0:2, '%.');
						writeln(' Canal  5: ', (C5 / TOTALP * 100):0:2, '%.');
						writeln(' Canal  7: ', (C7 / TOTALP * 100):0:2, '%.');
						writeln(' Canal 12: ', (C12 / TOTALP * 100):0:2, '%.');
						textcolor(14);
						writeln('_________________________________________________');
					  textcolor(15);
						writeln(' Pressione qualquer tecla para continuar...');
						readln;
						clrscr;
					end;
				2:
					begin
						clrscr;
						LOOP := False;
						textcolor(12);
						writeln('_________________________________________________');
						writeln('               PROGRAMA FINALIZADO               ');
						writeln('_________________________________________________');
						writeln;
						writeln('.                  _                             ');
						writeln('                 ( ((                            ');
						writeln('                  \ =\                           ');
						writeln('                 __\  `--\                       ');
						writeln('                (__))  (  \----                  ');
						writeln('                (__)) _                          ');
						writeln('                 (__))                           ');
						writeln('                  (_))__/----                    ');
						textcolor(15);
						readln;
						clrscr;
					end;
				end;
		end;  
End.