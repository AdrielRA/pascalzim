Program jogo_da_velha;
uses crt;
var TAB : array[1..3,1..3] of char;
		V, I, J, L, C, X, Y : integer;
		OP         : char;
		LOOP       : boolean;

procedure TELA();
	begin
		textbackground(16);
		clrscr;
		textcolor(15);
		textbackground(11);
		write(chr(201));
		for I := 1 to 48 do
			write(chr(205));
		writeln(chr(187));
		for J := 1 to 3 do
			begin
				write(chr(186));
				for I := 1 to 48 do
					write(' ');
				writeln(chr(186));
			end;
		write(chr(204));
		for I := 1 to 48 do
			write(chr(205));
		writeln(chr(185));
		for J := 1 to 11 do
			begin
				write(chr(186));
				for I := 1 to 48 do
					begin
						write(' ');
					end;
				writeln(chr(186));
			end;
		write(chr(204));
		for I := 1 to 48 do
			write(chr(205));
		writeln(chr(185));
		for J := 1 to 3 do
			begin
				write(chr(186));
				for I := 1 to 48 do
					write(' ');
				writeln(chr(186));
			end;
		write(chr(200));
		for I := 1 to 48 do
			write(chr(205));
		write(chr(188));
	end;

function OPCAO():char;
	var x:char;
	begin
		while True do
	  	begin
	  		textcolor(14);
	  		gotoxy(3,19);
	  		write('Sua opção: ');
	  		x := readkey;
	  		textcolor(15);
	  		if (ord(x) = 13) then
	  			begin
	  			  gotoxy(3,19);
	  				write('                                               ');
	  				gotoxy(3,19);
	  			end
	  		else break;	
			end;
		OPCAO := x;
		textcolor(15);
	end;

function ERRO():char;
	var x:char;
	begin
		while True do
	  	begin
	  		gotoxy(3,19);
				write('                                               ');
				gotoxy(3,19);
				textcolor(14);
				write('Opção inválida, tente novamente: ');
				gotoxy(36,19);
				textcolor(14);
	  		x := readkey;
	  		textcolor(15);
	  		if (ord(x) = 13) then
	  			begin
	  			  gotoxy(3,19);
	  				write('                                               ');
	  				gotoxy(3,19);
	  			end
	  		else break;	
			end;
		ERRO := x;
		textcolor(15);
	end;

procedure PAUSE();
	begin
		gotoxy(2,19);
		write(' Qualquer tecla para continuar... ');
		readln;
	end;

procedure CENTER(T:string);
	var X : integer;
	begin
		X := trunc(26 - length(T)/2);
		gotoxy(X,whereY);
		write(T);
	end;
		
procedure MENU();
	begin
		TELA();
		gotoxy(1,3);
		CENTER('JOGO DA VELHA');
		gotoxy(3,6); write('[ 1 ] Partida Rápida');
		gotoxy(3,7); write('[ 2 ] Escolher Dificuldade');
		gotoxy(3,8); write('[ 3 ] Jogar Com Amigo');
		gotoxy(3,9); write('[ 4 ] Records');
		gotoxy(3,10); write('[ 5 ] Sobre');
		gotoxy(3,11); write('[ 6 ] Sair');
		OP := OPCAO();
		while not (OP in ['0'..'6']) do
				OP := ERRO();
	end;

procedure NIVEL();
	var NVOP : char;
	begin
		TELA();
		gotoxy(1,3);
		CENTER('MENU DE DIFICULDADE');
		gotoxy(3,6); write('[ 1 ] Fácil');
		gotoxy(3,7); write('[ 2 ] Normal');
		gotoxy(3,8); write('[ 3 ] Difícil');
		gotoxy(3,9); write('[ 4 ] Impossível');
		gotoxy(3,11); write('[ 5 ] Voltar');
		NVOP := OPCAO();
		while not (NVOP in ['0'..'5']) do
				NVOP := ERRO();
		case NVOP of
			'5': MENU();
			else
				begin
					gotoxy(3,19);
					write('                                               ');
					gotoxy(3,19);
					write('AINDA EM DESENVOLVIMENTO!');
					delay(2000);
				end;
		end; 
	end;

procedure DESENHAR();
	begin
		gotoxy(16,7);
		write('     ',chr(179),'     ',chr(179),'     ');
		gotoxy(16,8);
		write('     ',chr(179),'     ',chr(179),'     ');
		gotoxy(16,9);
		for I := 1 to 2 do
			begin
				for J := 1 to 5 do
					write(chr(196));
				write(chr(197));
			end;
		for I := 1 to 5 do
					write(chr(196));
		gotoxy(16,10);
		write('     ',chr(179),'     ',chr(179),'     ');
		gotoxy(16,11);
		write('     ',chr(179),'     ',chr(179),'     ');
		gotoxy(16,12);
		for I := 1 to 2 do
			begin
				for J := 1 to 5 do
					write(chr(196));
				write(chr(197));
			end;
		for I := 1 to 5 do
					write(chr(196));
		gotoxy(16,13);
		write('     ',chr(179),'     ',chr(179),'     ');
		gotoxy(16,14);
		write('     ',chr(179),'     ',chr(179),'     ');
	end;

procedure ESCREVER();
	begin
		gotoxy(16,8);
		for I := 1 to 3 do
			begin
				for J := 1 to 3 do
					begin
						gotoxy(whereX+2,whereY);
						write(upcase(TAB[I,J]));
						gotoxy(whereX+3,whereY);
					end;
				gotoxy(16,whereY+3);
			end;
		gotoxy(X,Y);
	end;

function JOGADA():char;
	var JG, NOME                             : char;
			CO, CX, LO, LX, DIO, DIX, DIO2, DIX2 : integer;
	begin
		while True do 
			begin
				DIO := 0; DIX := 0;
				DIO2 := 0; DIX2 := 0;
				V := 0;
				for I := 1 to 3 do
					begin
						LX := 0; LO := 0;
						CO := 0; CX := 0;
						for J := 1 to 3 do
							begin
								if (TAB[I,J] = 'X') then
									LX := LX + 1
								else if (TAB[I,J] = 'O') then LO := LO + 1;
								if (TAB[J,I] = 'X') then
									CX := CX + 1
								else if (TAB[J,I] = 'O') then CO := CO + 1;
								if (I = J) then
									begin
										if (TAB[I,J] = 'X') then
											DIX := DIX + 1
										else if (TAB[I,J] = 'O') then DIO := DIO + 1;
									end;
								if (LX = 3) or (LO = 3) or (DIO = 3) or (DIX = 3) then
									break;
							end;
						if (CO = 3) or (CX =3) or (LX = 3) or (LO = 3) or (DIO = 3) or (DIX = 3) then
							break;
					end;
				if (TAB[1,3] = 'X') and (TAB[2,2] = 'X') and (TAB[3,1] = 'X') then DIX2 := 3
				else if (TAB[1,3] = 'O') and (TAB[2,2] = 'O') and (TAB[3,1] = 'O') then DIO2 := 3;
				if (CO = 3) or (CX =3) or (LX = 3) or (LO = 3) or (DIO = 3) or (DIX = 3) or (DIX2 = 3) or (DIO2 = 3) then
					begin
						if (CO = 3) or (LO = 3) or (DIO = 3) or (DIO2 = 3) then NOME := 'O'
						else if (CX = 3) or (LX = 3) or (DIX = 3) or (DIX2 = 3) then NOME := 'X';
						TELA();
						gotoxy(1,10);
						CENTER('TIVEMOS UMA VITÓRIA!');
						gotoxy(1,12);
						CENTER('GANHADOR: '+NOME);
						gotoxy(3,20);
						delay(4000);
						JOGADA := chr(27);
						break;
					end
				else
					begin
						for I := 1 to 3 do
							for J := 1 to 3 do
								if (TAB[I,J] <> ' ') then
									V := V + 1;
						if (V = 9) then
							begin
								TELA();
								gotoxy(1,10);
								CENTER('DEU VELHA!');
								delay(2000);
								JOGADA := chr(27);
								break;
							end; 
					end;
				gotoxy(3,19);
				write('                                              ');
				gotoxy(3,19);
				write('ESC para sair...');
				gotoxy(X,Y);
				JG := readkey;
				if ord(JG) = 0 then 
					JG := readkey; 
				if (ord(JG) = 13) then
			  	gotoxy(X,Y)
			  else if (ord(JG) = 77) then
			  		if C < 3 then
			  			begin
			  				C := C + 1;
			  				X := X + 6;
			  			end
			  		else
			  			begin
			  				C := 1;
			  				X := 18;
			  			end
			  else if (ord(JG) = 75) then
			  	if (C > 1) then
			  		begin
			  			C := C - 1;
			  			X := X - 6;
			  		end
			  	else
			  		begin
			  			C := 3;
			  			X := 30;
			  		end
			   else if (ord(JG) = 80) then
			   	if (L < 3) then
			  		begin
			  			L := L + 1;
			  			Y := Y + 3;
			  		end
			  	else
			  		begin
			  			L := 1;
			  			Y := 8;
			  		end
			  else if (ord(JG) = 72)then
			  	if (L > 1) then
			  		begin
			  			L := L - 1;
			  			Y := Y - 3;
			  		end
			  	else
			  		begin
			  			L := 3;
			  			Y := 14;
			  		end
				else if (not((upcase(JG)) in ['X','O'])) and (not((ord(JG)) in [27,72,75,77,80])) then
					begin
						gotoxy(3,20);
						write('                                              ');
						gotoxy(3,20);
						textcolor(14);
						write('Use apenas X e O');
						textcolor(15);
					end
				else if (ord(JG) = 27) then
					begin
						JOGADA := JG;
						break;
					end
				else
					begin
						if (TAB[L,C] = ' ') then
							begin
								TAB[L,C] := upcase(JG);
								gotoxy(3,20);
								write('                                              ');
							end
						else
							begin
								gotoxy(3,20);
								write('                                              ');
								gotoxy(3,20);
								write('Posição já ocupada!');
							end;	
						gotoxy(X,Y);
						break;
					end;
			end;
	end;

procedure AMIGO();
	begin
	end;

procedure GAME();
	var SAIR : byte;
	begin
		TELA();
		for I := 1 to 3 do
			for J := 1 to 3 do
				TAB[I,J] := ' ';
		gotoxy(1,3);
		CENTER('JOGO RÁPIDO');
		X := 18; Y := 8;
		L := 1; C := 1;
		repeat
			begin
				DESENHAR();
				ESCREVER();
				SAIR := ord(JOGADA());
			end;
		until (SAIR = 27);
	end;
	
procedure RECORDS();
	begin
		TELA();
		gotoxy(1,3);
		CENTER('RECORDS');
		gotoxy(1,11);
		CENTER('NADA AQUI!');
		PAUSE();
		MENU();
	end;

procedure SOBRE();
	begin
		TELA();
		gotoxy(1,3);
		CENTER('SOBRE');
		gotoxy(1,6);
		CENTER('Jogo da velha em PASCAL - v 1.1 ');
		gotoxy(1,8);
		CENTER('Desenvolvido por ADRIEL RICARDO');
		gotoxy(1,11);
		CENTER('Todos os direitos reservados ©');
		gotoxy(21,15);
		write('Data de Lançamento: 05/06/18');
		gotoxy(25,16);
		write('Data da versão: 13/06/18');
		PAUSE();
		MENU();
	end;

procedure FIM();
	begin
		gotoxy(3,19);
		write('                                              ');
		gotoxy(3,19);
		textcolor(14);
		write('Saindo');
		for I:= 1 to 4 do
			begin
				delay(500);
				write('.');
			end;
		LOOP := False;
	end;

Begin
	LOOP := True;
	MENU();
	while LOOP do
		begin
			case OP of
				'1':begin
						GAME();
						MENU();
					end;
				'2':begin
						NIVEL();
						GAME();
						MENU();
					end;
				'3':begin
						AMIGO();
						MENU();
					end;
				'4':begin
						RECORDS();
					end;
				'5':begin
						SOBRE();
					end;
				'6':begin
						FIM();
					end;
			end;
		end;  
End.