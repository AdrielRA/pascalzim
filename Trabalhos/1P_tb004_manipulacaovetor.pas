Program MinupulandoVetor;
var V            :array[1..10] of integer;
    OP, N, I, ID, C, D, E : integer;
    
procedure TELA();
	begin
		textbackground(16);
		clrscr;
		textcolor(15);
		textbackground(11);
		writeln(' ______________________________________________ ');
		writeln('|                                              |');
		writeln('|                                              |');
		writeln('|______________________________________________|');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|______________________________________________|');
	 	writeln('|                                              |');
	 	writeln('|                                              |');
	 	writeln('|______________________________________________|');
	end;
	
procedure LEITURA();
	begin
		TELA();
		ID := 1;
		E := 0;
		gotoxy(12,3);
		write('LENDO 10 VALORES DO VETOR');
	  for I:=1 to 10 do
			begin
				gotoxy(3,I+5);
			  write(I:2:0,'º valor: ');
			  textcolor(14);
			  readln(V[I]);
			  textcolor(15);
			end;
	end;

procedure VAZIO();
	begin
		write('O VETOR ESTÁ VAZIO!');
		gotoxy(3,10);
		write('Você deve preenchê-lo primeiro!');
		gotoxy(3,19);
		write('Fazer isso agora? [ESC]Não [ENTER]Sim: ');
		N := ord(readkey);
		if N <> 27 then
			LEITURA();
	end;
	
procedure MOSTRAR();
	begin
		TELA();
		gotoxy(10,3);
		write('VALORES ARMAZENADOS NO VETOR');
		gotoxy(3,6);
		if (ID = 1) then
			begin
				write('VETOR:');
				for I:=1 to 10 do 
					begin
						write(' ', V[I]);
					end;
				gotoxy(3,19);
				write('Qualquer tecla para continuar... ');
				readln;
			end
		else VAZIO();
	end;

Begin
	textcolor(15);
	ID := 0;
	repeat
		begin
			TELA();
			gotoxy(14,3);
			write('MANIPULANDO UM VETOR');
			gotoxy(1,6);
			writeln('| [ 01 ] Entrar com os valores do vetor');
			writeln('| [ 02 ] Mostrar os valores do vetor');
			writeln('| [ 03 ] Alterar um valor do vetor');
			writeln('| [ 04 ] Somar o vetor com um inteiro');
			writeln('| [ 05 ] Multiplicar o vetor por um inteiro');
			writeln('| [ 06 ] Maior valor do vetor');
			writeln('| [ 07 ] Ocorrências de um valor');
			writeln('| [ 08 ] Ordenar o vetor');
			writeln('| [ 09 ] Apagar o vetor');
			writeln('| [ 10 ] Discretizar o vetor');
			writeln('| [ 11 ] Sair do programa');
			gotoxy(3,19);
			write('Sua opção:');
			gotoxy(14,19);
			textcolor(14);
			readln(OP);
			textcolor(15);
			while (OP < 1) or (OP > 11) do
				begin
					gotoxy(3,19);
					write('                                             ');
					textcolor(14);
					gotoxy(3,19);
				 	write(' Opção inválida! Tente novamente: ');
				 	textcolor(15);
				 	readln(OP);
				 	textcolor(15);
				end;
			case (OP) of
				1:begin
						LEITURA();
					end;
				2:begin
						MOSTRAR();
					end;
				3:begin
						TELA();
						gotoxy(12,3);
						write('ALTERANDO VALOR NO VETOR');
						gotoxy(3,6);
						if (ID = 1) then
							begin
								write('Posição do valor que será alterado: ');
								textcolor(14);
								readln(I);
								while (I < 1) or (I > 10) do
									begin
										gotoxy(3,6);
										write('                                             ');
										textcolor(14);
										gotoxy(3,6);
									 	write('Indice inválido! Tente novamente: ');
									 	textcolor(15);
									 	readln(I);
									 	textcolor(15);
									end;
								textcolor(15);
								gotoxy(3,8);
								write('Entre com o novo valor: ');
								textcolor(14);
								readln(V[I]);
								textcolor(15);
								gotoxy(3,19);
								write('                                             ');
								gotoxy(3,19);
								write('Deseja ver o vetor? [ESC] Não [ENTER] Sim: ');
								N := ord(readkey);
								if (N <> 27) then
									MOSTRAR();
								textcolor(15);
							end
						else VAZIO();
					end;
				4:begin
						TELA();
						gotoxy(10,3);
						write('SOMA VALOR INTERIO AO VETOR');
						gotoxy(3,6);
						if (ID = 1) then
							begin
								write('Entre com o inteiro que será somado: ');
								textcolor(14);
								readln(N);
								textcolor(15);
								for I := 1 to 10 do
									begin
										V[I] := V[I] + N;
									end;
								gotoxy(3,19);
								write('                                             ');
								gotoxy(3,19);
								write('Deseja ver o vetor? [ESC] Não [ENTER] Sim: ');
								N := ord(readkey);
								if (N <> 27) then
									MOSTRAR();
								textcolor(15);
							end
						else VAZIO();
					end;
				5:begin
						TELA();
						gotoxy(8,3);
						write('MULTIPLICA VALOR INTERIO AO VETOR');
						gotoxy(3,6);
						if (ID = 1) then
							begin
								write('Entre com o inteiro que será multiplicado: ');
								textcolor(14);
								readln(N);
								textcolor(15);
								for I := 1 to 10 do
									begin                                               
										V[I] := V[I] * N;
									end;
								gotoxy(3,19);
								write('                                             ');
								gotoxy(3,19);
								write('Deseja ver o vetor? [ESC] Não [ENTER] Sim: ');
								N := ord(readkey);
								if (N <> 27) then
									MOSTRAR();
								textcolor(15);
							end
						else VAZIO();
					end;
				6:begin
						TELA();
						gotoxy(19,3);
						write('MAIOR VALOR');
						gotoxy(3,6);
						if (ID = 1) then
							begin
								N := 0;
								for I := 1 to 10 do
										if (V[I] > N) then
												N := V[I]; 
								write('Maior valor armazenado no vetor: ', N);
								gotoxy(3,19);
								write('Qualquer tecla para continuar... ');
								readln;
							end
						else VAZIO();
					end;
				7:begin
						TELA();
						gotoxy(12,3);
						write('OCORRÊNCIA DE UM VALOR');
						gotoxy(3,6);
						if (ID = 1) then
							begin
								write('Entre com o valor: ');
								textcolor(14);
								readln(N);
								textcolor(15);
								OP := 0;
								for I := 1 to 10 do
										if V[I] = N then
											inc(OP);
								gotoxy(3,8);
								write('Número de ocorrências desse valor: ', OP);
								textcolor(15);
								gotoxy(3,19);
								write('Qualquer tecla para continuar... ');
								readln;
							end
						else VAZIO();
					end;
				8:begin
						if (ID = 1) then
							begin
								C := 1;
								for I := 1 to 9 do
									begin
										D := 1;
										for N := 1 to 9 do
											begin
												if V[N] > V[N+1] then
													begin
														OP := V[N+1];
														V[N+1] := V[N];
														V[N] := OP;
														C := 0; D := 0;
													end;
											end;
										if D = 1 then
											break;	
									end;
								if C = 1 then
									begin
										gotoxy(3,19);
										write('                                             ');
										gotoxy(3,19);
										textcolor(14);
										write('O VETOR JÁ ESTÁ ORDENADO!');
										delay(2000);
										gotoxy(3,19);
										write('                                             ');
										gotoxy(3,19);
										textcolor(15);
										write('Deseja ver o vetor? [ESC] Não [ENTER] Sim: ');
										N := ord(readkey);
										if (N <> 27) then
											MOSTRAR();
									end
								else
									begin
										gotoxy(3,19);
										write('                                             ');
										gotoxy(3,19);
										textcolor(14);
										write('Ordenando, aguarde');
										for I := 1 to 4 do
											begin
												delay(500);
												write('.');
											end;
										gotoxy(3,19);
										write('                                             '); 
										gotoxy(10,19);
										textcolor(14);
										write('VETOR ORDENADO COM SUCESSO!');
										delay(2000);
										gotoxy(3,19);
										write('                                             ');
										gotoxy(3,19);
										textcolor(15);
										write('Deseja ver o vetor? [ESC] Não [ENTER] Sim: ');
										N := ord(readkey);
										if (N <> 27) then
											MOSTRAR();
									end;
								end
						else
							begin
								gotoxy(3,19);
								write('                                             ');
		            gotoxy(12,19);
		            textcolor(14);
		            write('O VETOR ESTÁ VAZIO!');
		            textcolor(15);
		            delay(2000);
		            gotoxy(3,19);
		            write('                                             ');
		            gotoxy(3,19);
		            write('Preenchê-lo agora? [ESC]Não [ENTER]Sim: ');
								N := ord(readkey);
								if N <> 27 then
									LEITURA();
							end;
					end;
				9:begin
						if (ID = 0) then
							begin
								gotoxy(3,19);
								write('                                             ');
		            gotoxy(12,19);
		            textcolor(14);
		            write('O VETOR JÁ ESTÁ APAGADO!');
		            textcolor(15);
		            delay(2000);
							end
						else
							begin
								gotoxy(3,19);
								write('                                             ');
		            gotoxy(3,19);
		            write('Tem certeza? [ESC]Cancelar [ENTER]Continuar ');
		            N := ord(readkey);
		            if (N <> 27) then
		            	begin
		            		ID := 0;
										for I := 1 to 10 do
												V[I] := 0;
										gotoxy(3,19);
										write('                                             ');
										textcolor(14);
										gotoxy(10,19);
										write('APAGADO ZERADO COM SUCESSO! ');
										delay(1000);
										textcolor(15);
									end
								else
									begin
										gotoxy(3,19);
										write('                                             ');
									end; 
							end;
					end;
				10:begin
						if (E = 0) then
							begin
								TELA();
								gotoxy(15,3);
								write('DISCRETIZANDO VETOR');
								gotoxy(3,6);
								if (ID = 1) then
									begin
										E := 1;
										write('Digite o valor linear: ');
										textcolor(14);
										readln(N);
										textcolor(15);
										for I := 1 to 10 do
											begin
												if V[I] >= N then
													V[I] := 1
												else V[I] := 0;
											end;
										gotoxy(3,19);
										textcolor(15);
										write('Deseja ver o vetor? [ESC] Não [ENTER] Sim: ');
										N := ord(readkey);
										if (N <> 27) then
											MOSTRAR();
									end
								else VAZIO(); 
							end
						else
							begin
								gotoxy(3,19);
								textcolor(14);
								write('O VETOR Já FOI DISCRETIZADO!');
								delay(2000);
								gotoxy(3,19);
								write('                                             ');
								gotoxy(3,19);
								textcolor(15);
								write('Deseja ver o vetor? [ESC] Não [ENTER] Sim: ');
								N := ord(readkey);
								if (N <> 27) then
									MOSTRAR();
							end;
					 end;
				11:begin
						gotoxy(3,19);
						write('                                             ');
						gotoxy(3,19);
						textcolor(14);
						write('Saindo');
						for I := 1 to 5 do
							begin
								delay(250);
								write('.');
							end;
					end;
			end;
		end;
 until OP=11;
End.