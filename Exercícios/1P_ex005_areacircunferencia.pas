Program ex005_areadacircunferencia;
var r, A : real;
const pi = 3.1415;
Begin
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-');
	writeln('     CALCULA ÁREA DA CIRCUNFERÊNCIA - v 1.0'     );
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-');
	writeln;
	write('Digite o raio da circunfêrencia em cm²: ');
	readln(r);
	A := pi * sqr(r);
	writeln;
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-');
	writeln;
	writeln('A área da circunferência será de: ', A:6:2, 'cm².');
	readln;  
End.