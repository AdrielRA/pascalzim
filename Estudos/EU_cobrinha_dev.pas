Program cobrinha;
uses crt;
var I, C, D, L : integer;
		OP : boolean;
		P, T : char;
Begin
	textbackground(7);
	textcolor(16);
	writeln(' __________________________________________________ ');
	writeln('|                 JOGO DA COBRINHA                 |');
	writeln('|__________________________________________________|');
	textbackground(10);
	for I := 1 to 16 do
		writeln('|                                                  |');
	writeln('|__________________________________________________|');
	writeln('                                                    ');;
	gotoxy(2,4);
	for C := 0 to 49 do
		begin
			for D := 1 to C do
				write(' ');
			write('=');
			L := 0;
			while L < 150000 do
				inc(L);
			gotoxy(1,4);
			write('|                                                  |');
			gotoxy(2,4);
		end;
	readln;  
End.