Program ex011_converteidade;
var ANONASC, ID,IDM,IDS,IDD, ANO : integer;
Begin
		writeln('_________________________________');
		writeln('     CALCULO DA IDADE - v1.0     ');
		writeln('_________________________________');
	  write('Qual seu ano de nascimento: ');
	  readln(ANONASC);
	  if (ANONASC < 1900) then
	  	begin
	  		writeln;
	  		writeln('Voc� � uma m�mia?');
	  		writeln;
	  	end;
	  write('Ano atual: ');
    readln(ANO);
    ID := ANO - ANONASC;
		IDM := ID * 12;
		IDS := IDM * 4;
		IDD := IDS * 7;
		writeln('_________________________________');
		writeln('Sua idade � de:            ', ID);
		writeln('Sua idade em meses � de:   ', IDM);
		writeln('Sua idade em semanas � de: ', IDS);
		writeln('Sua idade em dias � de:    ', IDD);
		writeln('_________________________________');
		readln;
End.