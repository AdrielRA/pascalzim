Program Jogo_da_Cobrinha;
uses crt;

const MPX = 2;
			MPY = 4;
			ALTURA = 20;
			LARGURA= 48;			
			CORPO = #207;
			FRUTA = #208;
			CABECA =#254;
			XSTA = LARGURA + 4;
			AREA = ALTURA * LARGURA;			

Type Posicao = record
							 	X : integer;
							 	Y : integer;
							 end;
		 TEMP = record
		 					MINUTO : integer;
		 					SEGUNDO: integer;
		 				end;
		 REC = record
						 NOME : string;
						 TIME : TEMP;
						 PERC : integer;
						 VEL : integer;
					 end;

var	COBRA : record
							SEG : array[1..AREA] of Posicao;
							QNT_SEG : integer;
							DIMENSAO: integer;
							DIRECAO : char;
							ATRASO  : integer;
						end;
		BG : array[1..5] of integer;
		TC : array[1..5] of integer;
		TOP : array[1..11] of REC;
		PLAYER : string;
		C, I, J, VEL, TAXA, SEG, MIN, REL, OP, SUB_OP: integer;
		COR_COBRA, COR_FUNDO, COR_FRUTA, COR_COLISAO : integer;
		BGA, BGP, TCA, TCP, CONT, CONTJOG, COMPLETE : integer;
		SALVAR : char;
		SAIU, MOV_OK: boolean;
		P_COMIDA, COMIDA: Posicao;

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


procedure DESENHA(CORPO:char; PX:integer; PY:integer; COR:integer);
	begin
		gotoxy(MPX + PX - 1, MPY + PY - 1);
		textcolor(COR);
		write(CORPO);
	end;

procedure DESENHA_COBRA(COR:integer);
	begin
		for CONT := 1 to COBRA.QNT_SEG do
			begin
				if CONT = 1 then
					DESENHA(CABECA, COBRA.SEG[CONT].X,COBRA.SEG[CONT].Y, COR)
				else
					DESENHA(CORPO, COBRA.SEG[CONT].X,COBRA.SEG[CONT].Y, COR);
		  end;
	end;

function COINCIDE(refX, refY:integer):boolean;
	begin
		for CONT := 1 to COBRA.QNT_SEG do
			begin
				if (COBRA.SEG[CONT].X = refX) and (COBRA.SEG[CONT].Y = refY) then
					begin
						COINCIDE := True;
						exit;
					end
				else COINCIDE := False;
			end;
	end;

function GERA_COMIDA():Posicao;
	var LIVRE     : array[1..AREA] of Posicao;
			QNT_LIVRE : integer;
			CONTX, CONTY : integer;
			SORTEIO : integer;
	begin
		QNT_LIVRE := 0;
		for CONTX := 1 to LARGURA do
			for CONTY := 1 to ALTURA do
				if not (COINCIDE(CONTX, CONTY)) then
					begin
						inc(QNT_LIVRE);
						LIVRE[QNT_LIVRE].X := CONTX;
						LIVRE[QNT_LIVRE].Y := CONTY;
					end;
		randomize;
		SORTEIO := random(QNT_LIVRE) + 1;
		DESENHA(FRUTA, LIVRE[SORTEIO].X, LIVRE[SORTEIO].Y, COR_FRUTA);
		GERA_COMIDA := LIVRE[SORTEIO];
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

procedure STATUS();
	begin
		inc(C);
		gotoxy(XSTA,ALTURA-2);
		write('TEMPO:');
		gotoxy(XSTA,ALTURA-1);
		write(MIN:2,':', SEG:2);
		if MIN < 10 then
			begin
				gotoxy(XSTA,ALTURA-1);
				write('0');
			end;
		if SEG < 10 then
			begin
				gotoxy(XSTA+3,ALTURA-1);
				write('0');
			end;
		if REL = trunc(1000/VEL) then
			begin
				if SEG > 58 then
					begin
						MIN := MIN + 1;
						SEG := 0;
					end
				else SEG := SEG + 1;
				REL :=0;
			end;
		gotoxy(XSTA,ALTURA+1);
		write('VIDAS: ', 1);
		gotoxy(MPX+1, ALTURA+5);
		COMPLETE := (COBRA.QNT_SEG * 100)div(AREA);
		write('Concluido: ', COMPLETE, '%');
	end;

procedure PEGA_NOME();
	begin
		TELA(BGP, COR_FUNDO);
		TITULO('JOGO DA COBRINHA');
		gotoxy(MPX+1, 5);
		write('Salvar placar? [ S ] Sim [ N ] Não: ');
		SALVAR := upcase(readkey);
		while (SALVAR <> 'S') and (SALVAR <> 'N') do
			begin
				gotoxy(MPX+1, 5);
				for I := 1 to LARGURA-1 do
					write(' ');
				gotoxy(MPX+1, 5);
				textcolor(14);
				write('Use apenas [ S ] Sim [ N ] Não: ');
				SALVAR := upcase(readkey);
				textcolor(15);
			end;
		if SALVAR = 'S' then
			begin
				gotoxy(MPX+1, 5);
				for I := 1 to LARGURA-1 do
					write(' ');
				gotoxy(MPX+1, 5);
				write('Informe seu nome: ');
				readln(PLAYER);
				while (length(PLAYER) > 10) do
					begin
						gotoxy(MPX+1, 5);
						for I := 1 to LARGURA-1 do
							write(' ');
						RODAPE('Nome deve ter menos de 10 letras!', COR_COLISAO);
						gotoxy(MPX+1, 5);
						write('Informe seu nome: ');
						readln(PLAYER);
					end;
				textcolor(COR_COBRA);
				PLAYER := upcase(PLAYER);
			end;
	end;

procedure CALC_REC();
	var PLAYER_AT, PLAYER_AN : integer;
	begin
		if (COMPLETE > 0) then
			begin
				I := CONTJOG-1;
				while (I > 0) and (SUB_OP >= TOP[I].VEL) do
					begin
						if (I > 0) and (SUB_OP > TOP[I].VEL) then
							begin
								TOP[I+1].PERC := TOP[I].PERC;
								TOP[I+1].TIME.MINUTO := TOP[I].TIME.MINUTO;
								TOP[I+1].TIME.SEGUNDO := TOP[I].TIME.SEGUNDO;
								TOP[I+1].NOME := TOP[I].NOME;
								TOP[I+1].VEL := TOP[I].VEL;
								dec(I);
							end
						else if (I > 0) and (COMPLETE >= TOP[I].PERC) then
							begin
								TOP[I+1].PERC := TOP[I].PERC;
								TOP[I+1].TIME.MINUTO := TOP[I].TIME.MINUTO;
								TOP[I+1].TIME.SEGUNDO := TOP[I].TIME.SEGUNDO;
								TOP[I+1].NOME := TOP[I].NOME;
								TOP[I+1].VEL := TOP[I].VEL;
								dec(I);
								if (I > 0) and ((MIN <= TOP[I].TIME.MINUTO) and (SEG < TOP[I].TIME.SEGUNDO)) then
									begin
										TOP[I+1].PERC := TOP[I].PERC;
										TOP[I+1].TIME.MINUTO := TOP[I].TIME.MINUTO;
										TOP[I+1].TIME.SEGUNDO := TOP[I].TIME.SEGUNDO;
										TOP[I+1].NOME := TOP[I].NOME;
										TOP[I+1].VEL := TOP[I].VEL;
										dec(I);
										PLAYER_AT := 0; PLAYER_AN := 0;
										for J := 1 to length(PLAYER) do
											begin
												PLAYER_AT := PLAYER_AT + ord(TOP[I].NOME[J]);
											end;
										for J := 1 to length(TOP[I].NOME) do
											begin
												PLAYER_AN := PLAYER_AN + ord(PLAYER[J]);
											end; 
										if (I > 0) and (PLAYER_AN > PLAYER_AT) then
											begin
												TOP[I+1].PERC := TOP[I].PERC;
												TOP[I+1].TIME.MINUTO := TOP[I].TIME.MINUTO;
												TOP[I+1].TIME.SEGUNDO := TOP[I].TIME.SEGUNDO;
												TOP[I+1].NOME := TOP[I].NOME;
												TOP[I+1].VEL := TOP[I].VEL;
												dec(I);
											end;
									end;
							end;
					end;
				TOP[I+1].PERC := COMPLETE;
				TOP[I+1].TIME.MINUTO := MIN;
				TOP[I+1].TIME.SEGUNDO := SEG;
				TOP[I+1].NOME := PLAYER;
				TOP[I+1].VEL := SUB_OP;
			end;			
	end;

function MOVE():boolean;
	const OBSTACULO = 45;
	var PROX_P : Posicao;
	function COLISAO(refX, refY : integer):boolean;
		begin
			if (refX = 0) or (refX > LARGURA) or (refY = 0) or (refY > ALTURA) or (COINCIDE(refX,refY)) then
				COLISAO := True
			else COLISAO := False;
		end;
	begin
		PROX_P := COBRA.SEG[1];
		case COBRA.DIRECAO of
			'N': dec(PROX_P.Y);
			'S': inc(PROX_P.Y);
			'L': inc(PROX_P.X);
			'O': dec(PROX_P.X)
		end;
		if not (COLISAO(PROX_P.X, PROX_P.Y)) then
			begin
				if COBRA.QNT_SEG < COBRA.DIMENSAO then
					inc(COBRA.QNT_SEG)
				else DESENHA(#32, COBRA.SEG[COBRA.QNT_SEG].X, COBRA.SEG[COBRA.QNT_SEG].Y, COR_FUNDO);
				DESENHA(CABECA, PROX_P.X, PROX_P.Y, COR_COBRA);
				DESENHA(CORPO, COBRA.SEG[1].X, COBRA.SEG[1].Y, COR_COBRA);
				for CONT := COBRA.QNT_SEG downto 1+1 do
			  	COBRA.SEG[CONT] := COBRA.SEG[CONT-1];
			  COBRA.SEG[1] := PROX_P;
			  if (COBRA.SEG[1].X = P_COMIDA.X) and (COBRA.SEG[1].Y = P_COMIDA.Y) and not(COBRA.QNT_SEG = AREA) then
			  	begin
						TELA(COR_FUNDO+5, COR_FUNDO);
						DESENHA_COBRA(COR_FUNDO);
						TITULO('JOGO DA COBRINHA');
						STATUS();
						delay(VEL);
						TELA(COR_FUNDO, COR_COBRA);
						DESENHA_COBRA(COR_COBRA);
						TITULO('JOGO DA COBRINHA');
						STATUS();
			  		P_COMIDA := GERA_COMIDA();
			  		COBRA.DIMENSAO := COBRA.DIMENSAO + TAXA;
			  	end;
			  MOVE := True;
			end
		else
			begin
				delay(OBSTACULO);
				if keypressed then
					MOVE := True
				else
					begin
						TELA(COR_FUNDO+5, COR_COBRA);
						TITULO('JOGO DA COBRINHA');
						STATUS();
						DESENHA_COBRA(COR_COLISAO);
						MOVE := False;
					end;
			end;		
	end;

procedure INICIO();
	begin
		TELA(COR_FUNDO, COR_COBRA);
		TITULO('JOGO DA COBRINHA');
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
				write(' Jogo Rápido          ');
				gotoxy(MPX+1, 6);
				textbackground(BG[2]);
				textcolor(TC[2]);
				write(' Escolher Dificuldade ');
				gotoxy(MPX+1, 7);
				textbackground(BG[3]);
				textcolor(TC[3]);
				write(' Records              ');
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

procedure RODADA();
	var INIT_PX, INIT_PY : integer;
			TECLA : char;
	begin
		MIN := 0; SEG := 0; REL := 0;
		SAIU := False;
		if CONTJOG < 10 then
			CONTJOG := CONTJOG + 1;
		TELA(COR_FUNDO, COR_COBRA);
		TITULO('JOGO RÁPIDO');
		INIT_PX := LARGURA div 2;
		INIT_PY := ALTURA div 2;
		COBRA.QNT_SEG := 1;
		COBRA.DIMENSAO := 4;
		COBRA.DIRECAO := 'L';
		COBRA.SEG[1].X := INIT_PX;
		COBRA.SEG[1].Y := INIT_PY;
		MOV_OK := True;
		DESENHA_COBRA(COR_COBRA);
		P_COMIDA := GERA_COMIDA();
		RODAPE('[SETAS] Controlar COBRA | [ENTER] PAUSAR | [ESC] Sair', COR_COBRA);
		case upcase(readkey) of
			#0:	case upcase(readkey) of
						#75: COBRA.DIRECAO := 'O';
						#80: COBRA.DIRECAO := 'S';
						#72: COBRA.DIRECAO := 'N';
				  end;
			#27:SAIU := True;
		end;
		RODAPE('                                                          ',COR_COBRA); 
	end;

procedure VELOCIDADE();
	begin
		TELA(COR_FUNDO, COR_COBRA);
		TITULO('ESCOLHA DE DIFICULDADE');
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
							TAXA := 16;
							VEL := 180;
						end;
					
					2:begin
							TAXA := 8;
							VEL := 60;
						end;
					3:begin
							TAXA := 4;
							VEL := 30;
						end;
					4:begin
							TAXA := 2;
							VEL := 15;
						end;
				end;
				gotoxy(MPX+1, 5);
				textbackground(BG[1]);
				textcolor(TC[1]);
				write(' Fácil      ');
				gotoxy(MPX+1, 6);
				textbackground(BG[2]);
				textcolor(TC[2]);
				write(' Normal     ');
				gotoxy(MPX+1, 7);
				textbackground(BG[3]);
				textcolor(TC[3]);
				write(' Difícil    ');
				gotoxy(MPX+1, 8);
				textbackground(BG[4]);
				textcolor(TC[4]);
				write(' Extremo    ');
			end;
		until (False);
		INICIO();
	end;

procedure JOGO();		
	begin
		RODADA();
		C := 0;
			repeat
				begin
					if SAIU then
						Exit;
					delay(VEL); 
					REL := REL + 1;
					if keypressed then
						case upcase(readkey) of
							#0:	case upcase(readkey) of
										#75: if COBRA.DIRECAO <> 'L' then COBRA.DIRECAO := 'O';
										#77: if COBRA.DIRECAO <> 'O' then COBRA.DIRECAO := 'L';
										#80: if COBRA.DIRECAO <> 'N' then COBRA.DIRECAO := 'S';
										#72: if COBRA.DIRECAO <> 'S' then COBRA.DIRECAO := 'N';
								  end;
							#27:Exit;
							'R':RODADA();
							#13:begin
										case upcase(readkey) of
											#0:	case upcase(readkey) of
														#75: if COBRA.DIRECAO <> 'L' then COBRA.DIRECAO := 'O';
														#77: if COBRA.DIRECAO <> 'O' then COBRA.DIRECAO := 'L';
														#80: if COBRA.DIRECAO <> 'N' then COBRA.DIRECAO := 'S';
														#72: if COBRA.DIRECAO <> 'S' then COBRA.DIRECAO := 'N';
												  end;
											#27:Exit;
										end;
									end;
						end;
					MOV_OK := MOVE();
					textcolor(COR_COBRA);
					STATUS(); 
					if COBRA.QNT_SEG = AREA then
						begin
							gotoxy(3,26);
							write('JOGO ZERADO!');
							RODADA();
						end
					else
						if not (MOV_OK) then
							begin
								delay(2500);
								PEGA_NOME();
								if SALVAR = 'S' then
									CALC_REC();
								RODADA();
							end;
				end;
			until (False);
	end;

procedure RECORDS();
	begin
		TELA(COR_FUNDO, COR_COBRA);
		TITULO('RECORDS');
		gotoxy(MPX+1, 5);
		write('TOP 10 TOP FODÕES DO GAME TOPIZEIRA EVER TOP');
		gotoxy(MPX+1, 7);
		write(' _________________ _________ _________ _____');
		gotoxy(MPX+1, 8);
		write('|      NOME       |  NIVEL  |  TEMPO  |PERCE|');
		gotoxy(MPX+1, 9);
		write('|_________________|_________|_________|_____|');
		for I := 1 to 10 do
			begin
				gotoxy(MPX+1, 9+I);
				write('| ', I:2,'º: ',TOP[I].NOME:10, ' |');
				case TOP[I].VEL of
					1:begin
							textcolor(13);
							write(' NOOOOOB ');
							textcolor(COR_COBRA);
						end;
					2:write(' NORMAL! ');
					3:write(' DIFICIL ');
					4:write(' EXTREMO ');
					else write('  VAZIO  ');
				end;
				write('|  ', TOP[I].TIME.MINUTO:2, ':', TOP[I].TIME.SEGUNDO:2,'  |',	TOP[I].PERC:4, '%|');
			  if TOP[I].TIME.MINUTO < 10 then
					begin
						gotoxy(MPX+32, 9+I);
						write('0');
					end;
				if TOP[I].TIME.SEGUNDO < 10 then
					begin
						gotoxy(MPX+35, 9+I);
						write('0');
					end;
			end;
		gotoxy(MPX+1, whereY+1);
		write('|_________________|_________|_________|_____|');
		RODAPE('Pressione [ENTER] para continuar...', COR_COBRA);
		repeat
			if keypressed then
				if upcase(readkey) = #13 then
					Exit;
		until (False);
	end;

procedure ANIMACAO();
	procedure FRENTE(p:integer);
		begin
			for I := 1 to p do
				begin
					write(CABECA);
					delay(60);
					if I <= p then
						begin
							gotoxy(wherex-1,whereY);
							write(CORPO);
						end;
				end;
		end;
	procedure BAIXO(p:integer);
		begin
			for I := 1 to p do
				begin
					gotoxy(wherex-1,whereY+1);
					write(CABECA);
					delay(60);
					if I <= p then
						begin
							gotoxy(whereX-1,whereY);
							write(CORPO);
						end;
				end;
		end;
	procedure CIMA(p:integer);
		begin
			for I := 1 to p do
				begin
					gotoxy(wherex-1,whereY-1);
					write(CABECA);
					delay(60);
					if I <= p then
						begin
							gotoxy(whereX-1,whereY);
							write(CORPO);
						end;
				end;
		end;
	procedure TRAS(p:integer);
		begin
			for I := 1 to 8 do
			begin
				gotoxy(whereX-2, whereY);
				write(CABECA);
				delay(60);
				if I <= 8 then
					begin
						gotoxy(whereX-1,whereY);
						write(CORPO);
					end;
			end;
		end;
	begin
		gotoxy(MPX+1, 11);
		FRENTE(3);
		BAIXO(6);
		FRENTE(3);
		CIMA(3);
		FRENTE(8);
		BAIXO(8);
		FRENTE(3);
		CIMA(5);
		FRENTE(14);
		CIMA(2);
		TRAS(8);
		CIMA(2);
		FRENTE(14);
		BAIXO(4);
		gotoxy(wherex-1,whereY+1);
		write(CABECA);
		delay(60);
	end;

procedure SOBRE();
	begin
		TELA(BGP, COR_FUNDO);
		TITULO('SOBRE');
		gotoxy(MPX+1, 5);
		write('Jogo da Cobrinha v3.0');
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
		write(chr(179), 'Data Lançamento: 14/06/18', chr(179));
		gotoxy(LARGURA-25, ALTURA+1);
		write(chr(179),'Data da Versão : 23/06/18',chr(179));
		gotoxy(LARGURA-25, ALTURA+2);
		write(chr(192));
		for I := 1 to 25 do
			write(chr(196));
		write(chr(217));
		ANIMACAO();
		RODAPE('Pressione [ENTER] para continuar...', COR_FUNDO);
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
	COR_COBRA := 15;
	COR_FUNDO := 11;
	COR_FRUTA := 13;
	COR_COLISAO := 14;
	BGA := 11;
	BGP := 8;
	TCA := 11;
	TCP := 15;
	SUB_OP := 2;
	VEL := 60; TAXA := 8;
	CONTJOG := 0;
	for I := 1 to 11 do
		begin
			TOP[I].NOME := '----------';
			TOP[I].TIME.MINUTO := 0;
			TOP[I].TIME.SEGUNDO := 0;
			TOP[I].PERC := 0;
			TOP[I].VEL := 0;
		end;
	cursoroff;
	while True do
		begin
			INICIO();
			case OP of
				1:JOGO();
				2:VELOCIDADE();
				3:RECORDS();
				4:SOBRE();
				5:Exit;
			end;
		end;
End.