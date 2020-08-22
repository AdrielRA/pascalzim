program cripto02; 
uses crt;

var	REG_CHAVE : text;
		CHAVE : array[1..10] of char;
		N : array[1..10] of integer;
		OK, TEXTO, DESCRIPTY : string;
		GERA, OP : char;
		C, I, J, K : integer;

function LETRA_CHAVE():char;
	var LETRA : integer;
	begin
		LETRA := random(256);
		while LETRA < 33 do
			LETRA := random(256);
		LETRA_CHAVE := chr(LETRA);
	end;

procedure GERA_CHAVE();
	begin
		assign(REG_CHAVE,'REG_CHAVE.txt');
		rewrite(REG_CHAVE);
		for I := 1 to 10 do
			begin
				CHAVE[I] := LETRA_CHAVE();
				N[I] := random(11);
				write(REG_CHAVE, CHAVE[I]);
			end;
		close(REG_CHAVE);
	end;

procedure LE_CHAVE();
	begin
	assign(REG_CHAVE,'REG_CHAVE.txt');
		reset(REG_CHAVE);
		while not EOF (REG_CHAVE) do
			for I := 1 to 10 do
				read(REG_CHAVE, CHAVE[I]);
		close(REG_CHAVE);
	end;

procedure MOSTRA_CHAVE();
	begin
		writeln;
		write('CHAVE: ');
		LE_CHAVE();
		for I := 1 to 10 do
			write(CHAVE[I]);
		writeln;
	end;

procedure VERIFICA_CHAVE();
	begin
		assign(REG_CHAVE,'REG_CHAVE.txt');
		reset(REG_CHAVE);
		while not eof(REG_CHAVE) do
			begin
				readln(REG_CHAVE, OK);
			end;
		close(REG_CHAVE);
		if length(OK) = 0 then
			begin
				GERA_CHAVE();
				MOSTRA_CHAVE();
			end
		else LE_CHAVE();
	end;

begin
	clrscr;
	textcolor(15);
	C := 0;
	write('TEXTO: ');
	readln(TEXTO);
	VERIFICA_CHAVE();
	while True do
		begin
			for I := 1 to length(TEXTO) do
				if I < 11 then
					TEXTO[I] := chr(ord(TEXTO[I]) + ord(CHAVE[I]) + N[I]);
			writeln;
			write('TEXTO CRIPTOGRAFADO: ', TEXTO);
			writeln;
			writeln;
			write('Informte a chave: ');
			readln(DESCRIPTY);
			for I := 1 to length(TEXTO) do
				if I < 11 then
					TEXTO[I] := chr(ord(TEXTO[I]) - ord(DESCRIPTY[I]) - N[I]);
			writeln;
			writeln('TEXTO ORIGINAL AQUI: ', TEXTO);
			writeln;
			write('[ 0 ] SAIR... ');
			OP := readkey;
			if OP = '0' then
				break;
			clrscr;
			write('TROCAR TEXTO? [ 1 ] Sim... ');
			GERA := readkey;
			writeln;
			writeln;
			if GERA = '1' then
				begin
					write('TEXTO: ');
					readln(TEXTO);
					writeln;
				end;
			write('GERAR CHAVE? [ 1 ] Sim... ');
			GERA := readkey;
			writeln;
			if GERA = '1' then
				begin
					GERA_CHAVE();
					MOSTRA_CHAVE();
				end;
		end;
	clrscr;
end.