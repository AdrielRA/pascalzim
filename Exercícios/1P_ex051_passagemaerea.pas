Program ex051_passagemaerea;
uses crt;
var VOO, LUGARES   : array[1..12] of integer;
		SRCEM, DESTINO : array[1..12] of string;
		I, OP, OP2, NV : integer;
		LOCAL          : string;
Begin
	clrscr;
	for I := 1 to 12 do
		begin
			textcolor(14);
			writeln('__________________________________________________');  
			writeln('           ENTRADA DE INFORMAÇÕES DE VOO          '); 
			writeln('__________________________________________________'); 
			textcolor(15);
			writeln;
			writeln(' ', I, 'º avião:');
			writeln;
			write(' Voo: ');
			readln(VOO[I]);
			write(' Srcem: ');
			readln(SRCEM[I]);
			write(' Destino: ');
			readln(DESTINO[I]);
			write(' Lugares: ');
			readln(LUGARES[I]);
			clrscr;
		end;
	repeat
		begin
			textcolor(14);
			writeln('__________________________________________________');  
			writeln('                   MENU PRINCIPAL                 '); 
			writeln('__________________________________________________'); 
			textcolor(15);
			writeln;
			writeln(' [ 1 ] Consultar');
			writeln(' [ 2 ] Reservar');
			writeln(' [ 3 ] Finalizar');
			writeln;
			write(' Sua opção: ');
			readln(OP);
			clrscr;
			if (OP = 1) then
				begin
					textcolor(14);
					writeln('__________________________________________________');  
					writeln('                 MENU DE CONSULTA                 '); 
					writeln('__________________________________________________'); 
					textcolor(15);
					writeln;
					writeln(' [ 1 ] Consulta por voo');
					writeln(' [ 2 ] Consulta por srcem');
					writeln(' [ 3 ] Consulta por destino');
					writeln;
					write(' Sua opção: ');
					readln(OP2);
					clrscr;
					case OP2 of
						1:begin
								textcolor(14);
								writeln('__________________________________________________');  
								writeln('                 CONSULTA PELO VOO                '); 
								writeln('__________________________________________________'); 
								textcolor(15);
								writeln;
								write(' Digite o núm. do voo: ');
								readln(NV);
								clrscr;
								I := 1;
								while (I <= 12) and (VOO[I] <> NV) do
									begin
										I := I + 1;
									end;
								if (I > 12) then
									begin
										textcolor(14);
										writeln('__________________________________________________');  
										writeln('          RESULTADO DA CONSULTA PELO VOO          '); 
										writeln('__________________________________________________'); 
										textcolor(15);
										writeln;
										writeln(' Voo inexistente!');
									end
								else
									begin
										textcolor(14);
										writeln('__________________________________________________');  
										writeln('          RESULTADO DA CONSULTA PELO VOO          '); 
										writeln('__________________________________________________'); 
										textcolor(15);
										writeln;
										writeln(' Número do voo: ', VOO[I]);
										writeln(' Local de srcem: ', SRCEM[I]);
										writeln(' Local de destino: ', DESTINO[I]);
										writeln(' Lugares disponíveis: ', LUGARES[I]);
									end;
							end;
						2:begin
								textcolor(14);
								writeln('__________________________________________________');  
								writeln('               CONSULTA PELO SRCEM               '); 
								writeln('__________________________________________________'); 
								textcolor(15);
								writeln;
								write(' Digite o local de srcem: ');
								readln(LOCAL);
								clrscr;
								for I := 1 to 12 do
									begin
										if (LOCAL = SRCEM[I]) then
											begin
												textcolor(14);
												writeln('__________________________________________________');  
												writeln('         RESULTADO DA CONSULTA PELO SRCEM         '); 
												writeln('__________________________________________________'); 
												textcolor(15);
												writeln;
												writeln(' Número do voo: ', VOO[I]);
												writeln(' Local de srcem: ', SRCEM[I]);
												writeln(' Local de destino: ', DESTINO[I]);
												writeln(' Lugares disponíveis: ', LUGARES[I]);
											end;
									end;
							end;
						3:begin
								textcolor(14);
								writeln('__________________________________________________');  
								writeln('               CONSULTA PELO DESTINO              '); 
								writeln('__________________________________________________'); 
								textcolor(15);
								writeln;
								write(' Digite o local de destino: ');
								readln(LOCAL);
								clrscr;
								for I := 1 to 12 do
									begin
										if (LOCAL = DESTINO[I]) then
											begin
												textcolor(14);
												writeln('__________________________________________________');  
												writeln('        RESULTADO DA CONSULTA PELO DESTINO        '); 
												writeln('__________________________________________________'); 
												textcolor(15);
												writeln;
												writeln(' Número do voo: ', VOO[I]);
												writeln(' Local de srcem: ', SRCEM[I]);
												writeln(' Local de destino: ', DESTINO[I]);
												writeln(' Lugares disponíveis: ', LUGARES[I]);
											end;
									end;
							end;
					end;
				end;
			if (OP = 2) then
				begin
					textcolor(14);
					writeln('__________________________________________________');  
					writeln('                 MENU DE RESERVAS                 '); 
					writeln('__________________________________________________'); 
					textcolor(15);
					writeln;
					write(' Digite o núm. do voo desejado: ');
					readln(NV);
					writeln;
					I := 1;
					while (I <= 12) and (VOO[I] <> NV) do
						begin
							I := I + 1;
						end;
					if (I > 12) then
						begin
							writeln(' Número de voo não encontrado!');
						end
					else
						begin
							if (LUGARES[I] = 0) then
								begin
									writeln(' Voo lotado!');
								end
							else
								begin
									LUGARES[I] := LUGARES[I] - 1;
									writeln(' Reserva Cofirmada!');
								end;
						end;
				end;
		end;
	until (OP = 3);
	readln;
End.