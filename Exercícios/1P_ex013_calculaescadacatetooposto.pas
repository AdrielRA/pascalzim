program ex013_calculaescadacatetooposto;
uses math;
var ANG, CA, H : real;
Begin
	writeln('___________________________________________');
	writeln(' CALCULANDO ALTURA DA ESCADA PELO �NGULO ');
	writeln('___________________________________________');
	writeln;
	write('Entre com o �ngulo em graus: ');
	readln(ANG);
	write('A qual dist�ncia da escada em metros? ');
	readln(CA);
	H := CA / cos(ANG * PI / 180);
	writeln('__________________________________________');
	writeln;
	writeln('A altura da escada ter� de ser de ', H:0:2, 'm.');
	readln;
End.
