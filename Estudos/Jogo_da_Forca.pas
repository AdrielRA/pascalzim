Program Jogo_da_Forca;

const MPX = 2;
			MPY = 4;
			ALTURA = 20;
			LARGURA= 48;
			XSTA= LARGURA + 4;
			AREA= ALTURA * LARGURA;
			BGP = 8;
			BGA = 11;
			TCA = 11;
			TCE = 14;
			TCP = 15;
			TCV = 12;

var C, I, J, OP, SUB_OP, T, LETRA_ERRADA : integer;
		PALAVRA, FRASE : string;
		LETRA, CAT : char;
		SOLUCAO    : array[1..15] of char;
		TENTATIVAS : array[1..25] of char;
		BG : array[1..5] of integer;
		TC : array[1..5] of integer;
		VITORIA, INV : boolean;

procedure TELA(COR_BG, COR_TX:integer);
	begin
		gotoxy(1,1);
		textcolor(COR_TX);
		textbackground(COR_BG);
		write(chr(201));
		for I := 1 to LARGURA do
			write(chr(205));
		write(chr(203));
		for I := 1 to 10 do
			write(chr(205));
		writeln(chr(187));
		write(chr(186));
		for I := 1 to LARGURA do
			write(' ');
		write(chr(186));
		for I := 1 to 10 do
			write(' ');
		writeln(chr(186));
		write(chr(204));
		for I := 1 to LARGURA do
			write(chr(205));
		write(chr(185));
		for I := 1 to 10 do
			write(' ');
		writeln(chr(186));
		for I := 1 to ALTURA do
			begin
				write(chr(186));
				for J := 1 to LARGURA do
					write(' ');
				write(chr(186));
				for J := 1 to 10 do
					write(' ');
				writeln(chr(186));	
			end;
		write(chr(204));
		for I := 1 to LARGURA do
			write(chr(205));                                             
		write(chr(202));
		for I := 1 to 10 do
			write(chr(205));
		writeln(chr(185));
		write(chr(186));
		for I := 1 to LARGURA+11 do
			write(' ');
		writeln(chr(186));
		write(chr(200));
		for I := 1 to LARGURA+11 do
			write(chr(205));
		write(chr(188));
	end;

procedure TITULO(TXT:string);
	begin
		gotoxy(3,2);
		write(TXT);
	end;
	
procedure RODAPE(TXT:string; COR:integer);
	begin
		gotoxy(MPX+1, ALTURA+5);
		textcolor(COR);
		write(TXT);
	end;

procedure INICIO();
	begin
		TELA(BGA, TCP);
		TITULO('JOGO DA FORCA');
		OP := 1;
		for I := OP to 5 do
			begin
				BG[I] := BGA;
				TC[I] := TCP;
			end;
		BG[1] := BGP; TC[1] := TCA;
		repeat
			begin
				if keypressed then
					case upcase(readkey) of
						#0:begin
								case upcase(readkey) of
									#80:begin
												inc(OP);
												if OP > 5 then
													begin
														OP := 1;
														BG[1] := BGP; TC[1] := TCA;
														BG[5] := BGA; TC[5] := TCP;
													end
												else	
													begin
														BG[OP] := BGP; BG[OP-1] := BGA;
														TC[OP] := TCA; TC[OP-1] := TCP;
													end;
											end;
									#72:begin
												dec(OP);
												if OP < 1 then
													begin
														OP := 5;
														BG[5] := BGP; TC[5] := TCA;
														BG[1] := BGA; TC[1] := TCP;
													end
												else	
													begin
														BG[OP] := BGP; BG[OP+1] := BGA;
														TC[OP] := TCA; TC[OP+1] := TCP;
													end;
											end;
								end;
							 end;
						#13:Exit;
					end;
				gotoxy(MPX+1, 5);
				textbackground(BG[1]);
				textcolor(TC[1]);
				write(' Partida Rápida       ');
				gotoxy(MPX+1, 6);
				textbackground(BG[2]);
				textcolor(TC[2]);
				write(' Escolher Categoria   ');
				gotoxy(MPX+1, 7);
				textbackground(BG[3]);
				textcolor(TC[3]);
				write(' Escolher Palavra     ');
				gotoxy(MPX+1, 8);
				textbackground(BG[4]);
				textcolor(TC[4]);          
				write(' Sobre                ');
				gotoxy(MPX+1, 9);
				textbackground(BG[5]);
				textcolor(TC[5]);
				write(' Sair                 ');				
			end;
		until (False);
	end;

procedure DESENHA();
	begin
		gotoxy(MPX+5, MPY);
		write(chr(219));
		for I := 1 to ALTURA - 3 do
			write(chr(223));
		write(chr(219));
		gotoxy(MPX+14, whereY);
		write(chr(219));
		gotoxy(MPX+5, whereY+1);
		write(chr(219));
		for I := 1 to 6 do
			write(' '); 
		write(chr(220), chr(223));
		gotoxy(ALTURA+5, whereY);
		write(chr(219));
		gotoxy(MPX+5, whereY+1);
		write(chr(219));
		for I := 1 to 4 do
			write(' '); 
		write(chr(220), chr(223));
		gotoxy(MPX+5, whereY+1);
		write(chr(219));
		for I := 1 to 2 do
			write(' '); 
		write(chr(220), chr(223));
		gotoxy(MPX+5, whereY+1);
		write(chr(219));
		write(chr(220), chr(223));
		for I := 1 to 12 do
			begin
				gotoxy(MPX+5, whereY+1);
				write(chr(219));				
			end;
		gotoxy(MPX+3, whereY+1);
		write(chr(220), chr(223), chr(219), chr(223), chr(220));
		gotoxy(MPX+1, whereY+1);
		write(chr(220), chr(223), '  ', chr(219), '  ', chr(223), chr(220));
		gotoxy(MPX, whereY+1);
		for I := 1 to 11 do
			write(chr(223));
		if LETRA_ERRADA >= 1 then
			begin
				gotoxy(MPX+21, MPY+2);
				write(chr(220), chr(223), chr(223), chr(223), chr(220));
				gotoxy(MPX+20, whereY+1);
				write(chr(219), ' ', chr(254), ' ', chr(254), ' ', chr(219));
				gotoxy(MPX+20, whereY+1); 
				write(chr(219), ' ', chr(254), chr(254), chr(254), ' ', chr(219));
				gotoxy(MPX+21, whereY+1);
				write(chr(223), chr(220), chr(220), chr(220), chr(223));
			end;
		if LETRA_ERRADA >= 2 then
			begin
				gotoxy(MPX+23, MPY+6);
				write(chr(219));
				for I := 1 to 3 do
					begin
						gotoxy(MPX+23, whereY+1);
						write(chr(219));
					end;
				gotoxy(MPX+23, whereY+1);
				write(chr(223)); 
			end;
		if LETRA_ERRADA >= 3 then
			begin
				gotoxy(MPX+20, MPY+7);
				write(chr(219), chr(223),chr(223));
			end;
		if LETRA_ERRADA >= 4 then
			begin
				gotoxy(MPX+24, MPY+7);
				write(chr(223), chr(223), chr(219));
			end;
		if LETRA_ERRADA >= 5 then
			begin
				gotoxy(MPX+22, MPY+10);
				write(chr(219));
				gotoxy(MPX+22, whereY+1);
				write(chr(219));
				gotoxy(MPX+21, whereY+1);
				write(chr(223), chr(223));
			end;
		if LETRA_ERRADA >= 6 then
			begin
				gotoxy(MPX+24, MPY+10);
				write(chr(219));
				gotoxy(MPX+24, whereY+1);
				write(chr(219));
				gotoxy(MPX+24, whereY+1);
				write(chr(223), chr(223));
			end;
	end;

procedure RESULTADO(VERDADE:boolean);
	begin
		if VERDADE then
			begin
				TELA(BGP,TCA);
				TITULO('VITÓRIA');
				FRASE := 'PARABÉNS... VOCÊ ACERTOU!';
				gotoxy((LARGURA)div(2)-((length(FRASE))div(2)),(ALTURA)div(2)+3);
				write(FRASE);
				RODAPE('Pressione [ENTER] para continuar...', TCA);
			end
		else
			begin
				TELA(BGP,TCV);
				TITULO('FIM DE JOGO');
				FRASE := 'INFELIZMENTE... VOCÊ ERROU!';
				gotoxy((LARGURA)div(2)-((length(FRASE))div(2)),(ALTURA)div(2)+3);
				write(FRASE);
				FRASE := 'A PALAVRA ERA: ' + PALAVRA;
				gotoxy((LARGURA)div(2)-((length(FRASE))div(2)),(ALTURA)div(2)+4);
				write(FRASE);
				RODAPE('Pressione [ENTER] para continuar...', TCV);
			end;
		repeat
			begin
				if keypressed then
					case upcase(readkey) of
						#13:Exit;
						#27:Exit;
					end;
			end;
		until (False);						
	end;

procedure SET_PALAVRA(NC:char);
	var ARQ : text;
			R : integer;
	begin
		assign(ARQ, 'Jogo_da_Forca'+NC+'.forca');
		reset(ARQ);
		C := 1;
		while not eof(ARQ) do
			begin
				readln(ARQ);
				C := C + 1;
			end;
		close(ARQ);
		R := random(C);
		if R = 0 then R := 1;
		I := 1; 
		assign(ARQ, 'Jogo_da_Forca'+NC+'.forca');
		reset(ARQ);
		while (not eof(ARQ)) and (I <= R) do
			begin
				readln(ARQ, PALAVRA);
				I := I + 1;
			end;
		close(ARQ);
		PALAVRA := upcase(PALAVRA);
	end;

procedure CATEGORIA();
	begin
		TELA(BGA,TCP);
		TITULO('ESCOLHA DE CATEGORIA');
		SUB_OP := 1;
		for I := SUB_OP to 4 do
			begin
				BG[I] := BGA;
				TC[I] := TCP;
			end;
		BG[1] := BGP; TC[1] := TCA;
		repeat
			begin
				if keypressed then
					case upcase(readkey) of
						#0:begin
								case upcase(readkey) of
									#80:begin
												inc(SUB_OP);
												if SUB_OP > 4 then
													begin
														SUB_OP := 1;
														BG[1] := BGP; TC[1] := TCA;
														BG[4] := BGA; TC[4] := TCP;
													end
												else	
													begin
														BG[SUB_OP] := BGP; BG[SUB_OP-1] := BGA;
														TC[SUB_OP] := TCA; TC[SUB_OP-1] := TCP;
													end;
											end;
									#72:begin
												dec(SUB_OP);
												if SUB_OP < 1 then
													begin
														SUB_OP := 4;
														BG[4] := BGP; TC[4] := TCA;
														BG[1] := BGA; TC[1] := TCP;
													end
												else	
													begin
														BG[SUB_OP] := BGP; BG[SUB_OP+1] := BGA;
														TC[SUB_OP] := TCA; TC[SUB_OP+1] := TCP;
													end;
											end;
								end;
							 end;
						#13,#27:Exit;
					end;
				case SUB_OP of
					1:begin
							CAT := '1';
						end;
					2:begin
							CAT := '2';
						end;
					3:begin
							CAT := '3';
						end;
					4:begin
							CAT := '4';
						end;
				end;
				gotoxy(MPX+1, 5);
				textbackground(BG[1]);
				textcolor(TC[1]);
				write(' Tudo       ');
				gotoxy(MPX+1, 6);
				textbackground(BG[2]);
				textcolor(TC[2]);
				write(' Animais    ');
				gotoxy(MPX+1, 7);
				textbackground(BG[3]);
				textcolor(TC[3]);
				write(' Frutas     ');
				gotoxy(MPX+1, 8);
				textbackground(BG[4]);
				textcolor(TC[4]);
				write(' Objetos    ');
			end;
		until (False);
	end;

procedure ESCOLHER();
	begin
		INV := False;
		TELA(BGA,TCP);
		TITULO('ESCOLHA DE PALAVRA');
		repeat
			begin
				gotoxy(MPX+1,MPY+1);
				textcolor(TCP);
				write('Informe a palavra: ');
				readln(PALAVRA);
				PALAVRA := upcase(PALAVRA);
				if (length(PALAVRA) >= 15) then
					INV := True
				else
					for I := 1 to length(PALAVRA) do
						begin
							if (PALAVRA[I] < #65) or (PALAVRA[I] > #90) then
								INV := True
							else INV := False;
						end;
				if INV then
					begin
						gotoxy(MPX+1, ALTURA+5);
						for J := 1 to LARGURA+10 do
							write(' ');
						RODAPE('ERROR >> Use Palavras Menores ou Sem Acento.', TCE);
						gotoxy(MPX+1,MPY+1);
						for J := 1 to LARGURA-1 do
							write(' ');
					end;
			end;
		until not INV;
		gotoxy(MPX+1, ALTURA+5);
		for J := 1 to LARGURA+10 do
			write(' ');
		RODAPE('Pressione [ENTER] para continuar...', TCP);
		repeat
			begin
				if keypressed then
					case upcase(readkey) of
						#13:Exit;
						#27:Exit;
					end;
			end;
		until (False);
	end;

procedure MOSTRAR_TENTATIVAS();
	begin
		gotoxy(XSTA-1,2);
		textcolor(TCP);
		write('TENTATIVAS');
		gotoxy(XSTA,MPY);
		for I := 1 to ALTURA do
			begin
				for J := 1 to 9 do
					begin
						write(' ');
					end;
				gotoxy(XSTA,whereY+1);
			end;
		gotoxy(XSTA,MPY);
		for I := 1 to T do
			begin
				for J := 1 to length(PALAVRA) do
					begin
						if TENTATIVAS[I] = PALAVRA[J] then
							begin
								textcolor(TCA);
								break;
							end
						else textcolor(TCE);
					end; 
				write(TENTATIVAS[I]+', ');
				if (I)mod(3) = 0 then
					gotoxy(XSTA,whereY+1);
			end;
		gotoxy(XSTA,whereY+1);
		textcolor(15);
	end;

procedure JOGO();
	var OK : boolean;
	begin
		LETRA_ERRADA := 0;
		TELA(BGA,TCP);
		TITULO('PARTIDA RÁPIDA');
		DESENHA();
		for I := 1 to length(PALAVRA) do
			begin
				SOLUCAO[I] := '_';
				if PALAVRA[I] = ' ' then
					SOLUCAO[I] := '-';
			end;
		for I := 1 to 25 do
			TENTATIVAS[I] := ' ';
		T := 0;
		INV := False;
		repeat
			begin
				T := T + 1;
				gotoxy(15,ALTURA);
				C := 0;
				for I := 1 to length(PALAVRA) do
					write(SOLUCAO[I], ' ');
				for I := 1 to length(PALAVRA) do
					if (SOLUCAO[I] <> '_') then
						begin
							C := C + 1;
							if C = length(PALAVRA) then
								begin
									VITORIA := True;
									Exit;
								end;
						end;
				LETRA := upcase(readkey);
				if (LETRA < #65) or (LETRA > #90) then
					begin
						if LETRA = #27 then Exit
						else
							begin
								gotoxy(MPX+1, ALTURA+5);
								textcolor(TCE);
								for J := 1 to LARGURA+10 do
									write(' ');
								RODAPE('Use apenas letras! [ESC] Para sair', TCE);
								textcolor(TCP);
								INV := True;
							end;
					end;
					for I := 1 to T do
						begin
							if LETRA = TENTATIVAS[I] then
								begin
									gotoxy(MPX+1, ALTURA+5);
									textcolor(TCE);
									for J := 1 to LARGURA+10 do
										write(' ');
									RODAPE('Essa letra já foi digitada!', TCE);
									textcolor(TCP);
									INV := True;
									break;
								end;
						end;
				if LETRA = #27 then
					begin
						VITORIA := False;
				  	Exit;
				  end;
				if not INV then
					begin
						TENTATIVAS[T] := LETRA;
						gotoxy(MPX+1, ALTURA+5);
						textcolor(TCE);
						for J := 1 to LARGURA+10 do
							write(' ');
						//DICA();
						textcolor(TCP);
						MOSTRAR_TENTATIVAS();
						C := 0;
						for I := 1 to length(PALAVRA) do
							begin
								if LETRA = PALAVRA[I] then
									SOLUCAO[I] := PALAVRA[I]
								else
									begin
										C := C + 1;
										if C = length(PALAVRA) then
										begin
											LETRA_ERRADA := LETRA_ERRADA + 1;
											DESENHA();
											if LETRA_ERRADA = 6 then
												begin
													VITORIA := False;
													Exit;
												end;
										end;
									end;
							end;
					end
				else
					begin
						INV := False;
						T := T - 1;
					end;
			end;
		until (False);
	end;
	
procedure SOBRE();
	begin
		TELA(BGP, TCA);
		TITULO('SOBRE');
		gotoxy(MPX+1, 5);
		write('Jogo da Forca v1.0');
		gotoxy(MPX+1, 7);
		write('Dev. Adriel Ricardo Azevedo');
		gotoxy(MPX+1, 9);
		write('E-mail: adrieldesigner@hotmail.com');
		gotoxy(LARGURA-25, ALTURA-1);
		write(chr(218));
		for I := 1 to 25 do
			write(chr(196));
		write(chr(191));
		gotoxy(LARGURA-25, ALTURA);
		write(chr(179), 'Data Lançamento: 09/07/18', chr(179));
		gotoxy(LARGURA-25, ALTURA+1);
		write(chr(179),'Data da Versão : 10/07/18',chr(179));
		gotoxy(LARGURA-25, ALTURA+2);
		write(chr(192));
		for I := 1 to 25 do
			write(chr(196));
		write(chr(217));
		RODAPE('Pressione [ENTER] para continuar...', TCA);
		repeat
			begin
				if keypressed then
					case upcase(readkey) of
						#13:Exit;
						#27:Exit;
					end;
			end;
		until (False);
	end;

Begin
	CAT := '1';
	cursoroff;
	while True do
		begin
			INICIO();
			case OP of
				1:begin
						SET_PALAVRA(CAT);
						JOGO();
						RESULTADO(VITORIA);
					end;
				2:begin
						CATEGORIA();
						SET_PALAVRA(CAT);
						JOGO();
						RESULTADO(VITORIA);
					end;
				3:begin
						ESCOLHER();
						JOGO();
						RESULTADO(VITORIA);
					end;
				4:SOBRE();
				5: Exit;
			end;
		end;  
End.