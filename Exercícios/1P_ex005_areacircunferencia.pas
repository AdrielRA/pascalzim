Program ex005_areadacircunferencia;
var r, A : real;
const pi = 3.1415;
Begin
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-');
	writeln('     CALCULA �REA DA CIRCUNFER�NCIA - v 1.0'     );
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-');
	writeln;
	write('Digite o raio da circunf�rencia em cm�: ');
	readln(r);
	A := pi * sqr(r);
	writeln;
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-');
	writeln;
	writeln('A �rea da circunfer�ncia ser� de: ', A:6:2, 'cm�.');
	readln;  
End.