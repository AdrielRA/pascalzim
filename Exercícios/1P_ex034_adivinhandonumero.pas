Program ex034_adivinhandonumero;
uses crt;
var N, NJ, C : integer;
		OP       : boolean;
Begin
	textcolor(14);
	C := 1;
	OP := True;
	writeln('______________________________________________');
	writeln('          ADIVINHANDO N�MERO INTEIRO          ');
	writeln('______________________________________________');
	writeln;
	textcolor(15);
	write('Jogador 1, digite um n�m. � ser adivinhado: ');
	textcolor(10);
	readln(N);
	clrscr;
	textcolor(14);
	writeln('______________________________________________');
	writeln('Jogador 2, adivinhe qual o n�m. do Jogador 1.');
	writeln('______________________________________________');
	writeln;
	while OP do
		begin
			textcolor(15);
			write('Qual � o n�mero? ');
			textcolor(10);
			readln(NJ);
			textcolor(15);
			if (NJ <> N) then
				begin
					if (NJ > N) then
						begin
							textcolor(12);
							writeln('______________________________________________');
							textcolor(15);
							writeln;
							writeln('� um n�mero menor!');
							C := C + 1;
						end
					else
						begin
							textcolor(12);
							writeln('______________________________________________');
							textcolor(15);
							writeln;
							writeln('� um n�mero maior!');
							C := C + 1;
						end;
				end
			else
				OP := False;
		end;
	textcolor(10);
	writeln;
	writeln('______________________________________________');
	writeln('            PARAB�NS, voc� acertou!           ');
	writeln('            N�m. de tentativas: ', C);
	writeln('______________________________________________');
  readln;
  clrscr;
End.