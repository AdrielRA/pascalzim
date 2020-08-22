Program ex027_medialaturasrepeticao;
var IDADE, I, CONT       : integer;
		ALTURA, ATOTAL, PESO : real;
Begin
	ATOTAL := 0;
	CONT := 0;
	for I := 1 to 5 do
		begin
			writeln(I, 'ª pessoa:');
			write('Entre com a idade: ');
			readln(IDADE);
			write('Entre com a altura em metros: ');
			readln(ALTURA);
			ATOTAL := ATOTAL + ALTURA;
			write('Entre com o peso em kg: ');
			readln(PESO);
			if (PESO < 40) then
				CONT := CONT + 1;
			writeln;
		end;
	writeln('A média de altura das pessoas é: ', (ATOTAL / 5):0:2, 'kg.');
	writeln('Percentual com menos de 40 kg é: ', (CONT * 100 / 5):0:2, '%.');
	readln;
End.