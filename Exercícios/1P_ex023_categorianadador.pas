Program ex023_categorianadador;
var I : integer;
		C : string;
Begin
	writeln;
	writeln('_________________________________________');
	writeln('       CATEGORIA DE NADADOR - v1.0       ');
	writeln('_________________________________________');
	writeln;
	write('Qual sua idade? ');
	readln(I);
	writeln;
	writeln('_________________________________________');
	writeln;
	if I >= 5 then
		begin
			if I >= 11 then
				begin
					if I >= 17 then
						begin
							if I >= 30 then
								C := 'S�nior'
							else
								C := 'Adulto';
						end
					else
						C := 'Juvenil';
				end
			else
				C := 'Infantil';
			writeln('Sua categoria �: ', C, '.');
		end
	else
		writeln('  Infelizmente voc� ainda � muito novo!');
	writeln('_________________________________________');
  readln;
End.