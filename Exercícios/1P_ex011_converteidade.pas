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
	  		writeln('Você é uma múmia?');
	  		writeln;
	  	end;
	  write('Ano atual: ');
    readln(ANO);
    ID := ANO - ANONASC;
		IDM := ID * 12;
		IDS := IDM * 4;
		IDD := IDS * 7;
		writeln('_________________________________');
		writeln('Sua idade é de:            ', ID);
		writeln('Sua idade em meses é de:   ', IDM);
		writeln('Sua idade em semanas é de: ', IDS);
		writeln('Sua idade em dias é de:    ', IDD);
		writeln('_________________________________');
		readln;
End.