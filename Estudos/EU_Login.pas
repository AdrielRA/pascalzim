Program Login;

const MPX = 2;
			MPY = 4;
			ALTURA = 20;
			LARGURA= 48;
			XSTA= LARGURA + 4;
			AREA= ALTURA * LARGURA;
			BGP = BLACK;
			BGG = GREEN;
			BGR = RED;
			BGY = YELLOW;
			BGC = CYAN;
			BGA = BLUE;
			BGM = MAGENTA;
			BGB = WHITE;
			TCP = 8;
			TCG = 10;
			TCR = 12;
			TCY = 14;
			TCC = 11;
			TCA = 9;
			TCM = 13;
			TCB = 15;

var C, I, J, OP, SUB_OP : integer;
		BG : array[1..5] of integer;
		TC : array[1..5] of integer;
		E_MAIL: string;
		SENHA : array[1..LARGURA-2]of char;
		LETRA : char;

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

procedure LOGIN();
	begin
		gotoxy(MPX+1, (ALTURA)div(2));
		write('E-mail:');
		gotoxy(MPX+1, whereY+1);
		for I := 1 to LARGURA-2 do
			begin
				textbackground(TCC);
				write(' ');
			end;
		gotoxy(MPX+1, whereY+2);
		textbackground(BGP);
		write('Senha:');
		gotoxy(MPX+1, whereY+1);
		for I := 1 to LARGURA-2 do
			begin
				textbackground(TCC);
				write(' ');
			end;
		gotoxy((LARGURA)div(2), whereY+3);
		textbackground(BGP);
		write('LOGAR');
		textbackground(TCC);
		gotoxy(MPX+1, (ALTURA)div(2)+1);
		textcolor(BGP);
		readln(E_MAIL);
		gotoxy(MPX+1, whereY+2);
		I := 1;
		repeat
			begin
				LETRA := readkey;
				SENHA[I] := LETRA;
				I := I+1;
				if LETRA <> #13 then
					begin
						gotoxy(whereX, whereY);
						write('*');
						gotoxy(whereX, whereY);
					end
				else
					begin
						cursoroff;
						textbackground(BGP);
						textcolor(TCC);
						gotoxy((LARGURA)div(2)-4, whereY+2);
						write(chr(201));
						for J := 1 to 12 do
							write(chr(205));
						writeln(chr(187));
						gotoxy((LARGURA)div(2)-4, whereY);
						write(chr(186));
						gotoxy((LARGURA)div(2)+9, whereY);
						writeln(chr(186));
						gotoxy((LARGURA)div(2)-4, whereY);
						write(chr(200));
						for J := 1 to 12 do
							write(chr(205));
						write(chr(188));
						gotoxy((LARGURA)div(2)-3, whereY-1); 
						write('LOGANDO');
						for J := 1 to 5 do
							begin
								write('.');
								delay(500);
							end;
					end;
			end;
		until LETRA=#13;	
	end;

procedure INICIO();
	begin
		TELA(BGP, TCC);
		TITULO('TELA DE LOGIN');
		LOGIN();
		TELA(BGC, TCB);
		TITULO('LOGADO');
		gotoxy(MPX+1,(ALTURA)div(2)+2);
		write('LOGADO COMO: ', E_MAIL);
		gotoxy(MPX+1,whereY+2);
		write('SUA SENHA É: ');
		for I := 1 to LARGURA-2 do
			begin
				if SENHA[I] = #13 then
					Exit;
				write(SENHA[I]);
			end;
	end;
	
procedure MENU();
	begin
	end;

Begin
	INICIO();
	MENU();  
End.