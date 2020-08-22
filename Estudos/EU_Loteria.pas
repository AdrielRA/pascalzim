Program EU_Loteria;
uses crt;
var LOT, AP : array[1..13] of integer;
		AC, C, I, N, OP, VL : integer;
Begin
	clrscr;
	textcolor(15);
	writeln('LOTERIAS PASCALZIM');
	writeln('__________________');
	writeln;
	write('VALOR DO PRÊMIO: R$');
	readln(VL);
	writeln;
	writeln('Entre com o resultado da loteria...');
	writeln;
	for I := 1 to 13 do
		begin
			write(I, 'º número sorteado: ');
			readln(LOT[I]);
			while (LOT[I] < 1) or (LOT[I] > 3) do
				begin
					textcolor(14);
					write('Número inválido, tente novamente: ');
					readln(LOT[I]);
					textcolor(15);
				end;
		end;
	C := 1;
	repeat
		begin
			AC := 0;
			clrscr;
			writeln('LOTERIAS PASCALZIM');
			writeln('__________________');
			writeln;
			writeln('Números do ', C,'º apostador: ');
			writeln;
			for I := 1 to 13 do
				begin
					write(I, 'º número: ');
					readln(AP[I]);
					while (AP[I] < 1) or (AP[I] > 3) do
						begin
							textcolor(14);
							write('Opção inválida! Tente novamente: ');
							readln(AP[I]);
							textcolor(15);
						end;
				end;
			clrscr;
			writeln('RESULTADO LOTERIA');
			writeln('_________________');
			writeln;
			for I := 1 to 13 do
				if AP[I] = LOT[I] then
					AC := AC + 1;
			if AC = 13 then
				begin
					textcolor(10);
					write('O Jogador ', C, ' GANHOU!');
					textcolor(15);
				end
			else
				begin
					textcolor(12);
					write('O Jogador ', C, ' NÃO GANHOU');
					textcolor(15);
				end;
			writeln; writeln;
			C := C + 1;			
			write('[ESC] Sair [ENTER] Continuar: ');
			OP := ord(readkey);
		end;
	until OP = 27;
	writeln; 
	write('O premio para o(s) ',C, ' ganhador(es) será: R$', VL/C:0:2); 
	readln;
End.