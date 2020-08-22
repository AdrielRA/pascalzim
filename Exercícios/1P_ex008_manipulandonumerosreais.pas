Program ex008_manipulandonumerosreais;
var NUM, FRANUM : real;
		INTNUM, ARRENUM : integer;		
Begin
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	writeln('      MANIPULANDO NÚMEROS REAIS - V 1.0      ');
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	writeln;
	write('Digite um número real: ');
	readln(NUM);
	INTNUM := trunc(NUM);
	FRANUM := frac(NUM);
	ARRENUM := round(NUM);
	writeln;
	writeln('A parte inteira desse número é:     ', INTNUM);
	writeln('A parte fracionária desse número é: ', FRANUM);
	writeln('O arredondamento desse número é:    ', ARRENUM);
	readln;
End.
	