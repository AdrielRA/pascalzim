Program ex008_manipulandonumerosreais;
var NUM, FRANUM : real;
		INTNUM, ARRENUM : integer;		
Begin
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	writeln('      MANIPULANDO N�MEROS REAIS - V 1.0      ');
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	writeln;
	write('Digite um n�mero real: ');
	readln(NUM);
	INTNUM := trunc(NUM);
	FRANUM := frac(NUM);
	ARRENUM := round(NUM);
	writeln;
	writeln('A parte inteira desse n�mero �:     ', INTNUM);
	writeln('A parte fracion�ria desse n�mero �: ', FRANUM);
	writeln('O arredondamento desse n�mero �:    ', ARRENUM);
	readln;
End.
	