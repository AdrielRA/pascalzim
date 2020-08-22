Program ex035_estoquedevinhos;
uses crt;
var VT, VB, VR, NV : integer;
		OP             : boolean;
		V              : char;
Begin
	VT := 0;
	VB := 0;
	VR := 0;
	NV := 0;
	OP := True;
	textcolor(14);
  writeln('___________________________________________');
	writeln('       CONTROLE DE ESTOQUE DE VINHOS       ');
	writeln('___________________________________________');
	writeln;
	textcolor(15);
	writeln('Para cada tipo de vinho à ser contado use:');
	writeln('[ T ] Tinto');
	writeln('[ B ] Branco');
	writeln('[ R ] Rose');
	writeln('[ F ] FINALIZAR');
	textcolor(14);
	writeln('___________________________________________');
	textcolor(15);
	writeln;
	while OP do
		begin
			write('Tipo de vinho: ');
			textcolor(10);
			readln(V);
			textcolor(15);
			if (V = 'T') or (V = 't') then
				VT := VT + 1
			else if (V = 'B') or (V = 'b') then
				VB := VB + 1 
			else if (V = 'R') or (V = 'r') then
				VR := VR + 1
			else if (V = 'F') or (V = 'f') then
				begin
					OP := False;
					if (VT = 0) and (VB = 0) and (VR = 0) then
						NV := 1;
				end
			else
				writeln('Opção inválida!');
		end;
	NV := NV + VT + VB + VR;
	writeln;
	textcolor(14);
	writeln('___________________________________________');
	textcolor(15);
	writeln;
	writeln('Foram registrados ', NV, ' vinhos.');
	writeln;
	writeln('Tinto : ', (VT * 100 / NV):0:2, '%.');
	writeln('Branco: ', (VB * 100 / NV):0:2, '%.');
	writeln('Rose  : ', (VR * 100 / NV):0:2, '%.');
	textcolor(14);
	writeln('___________________________________________');
	readln;
	clrscr;  
End.