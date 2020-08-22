Program EU_Base;
uses crt;
var I, J : integer;
Begin
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
	for J := 1 to 18 do
		begin
			write(chr(186));
			for I := 1 to 48 do
				begin
					textbackground(15);
					write(' ');
				end;
			textbackground(11);
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
	readln;  
End.