Program EU_caracteresespeciais;
uses crt;
var I : integer;
Begin
	clrscr;
	textcolor(15);
		for I := 1 to 255 do
			writeln( I, ' chr: ', chr(I));
	readln; 
End.