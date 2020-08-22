program cripto01; 
uses crt;

var KEY : array[1..10] of char;
		N : array[1..10] of integer;
		TEXTO, DESCRIPTY : string;
		GERA, OP : char;
		I, J, K : integer;

function CHAVE():char;
	var LETRA : integer;
	begin
		LETRA := random(256);
		while LETRA < 33 do
			LETRA := random(256);
		CHAVE := chr(LETRA);
	end;

begin
	clrscr;
	textcolor(15);
	write('TEXTO: ');
	readln(TEXTO);
	for I := 1 to 10 do
		begin
			KEY[I] := CHAVE();
			N[I] := random(11);
		end;
	write('CHAVE: ');
	for I := 1 to 10 do
		write(KEY[I]);
	writeln;
	while True do
		begin
			for I := 1 to length(TEXTO) do
				if I < 11 then
					TEXTO[I] := chr(ord(TEXTO[I]) + ord(KEY[I]) + N[I]);
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
					for I := 1 to 10 do
						begin
							KEY[I] := CHAVE();
							N[I] := random(11);
						end;
					writeln;
					write('CHAVE: ');
					for I := 1 to 10 do
						write(KEY[I]);
					writeln;
				end;
		end;
	clrscr;
end.