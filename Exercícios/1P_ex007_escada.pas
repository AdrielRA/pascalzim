Program ex007_escada;
var NDEGRAUS, DEGRAU, ALTURA : real;
		
Begin
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	writeln('           CALCULA DEGRAUS - V 1.0           ');
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	writeln;
	write('Qual a altura de cada degrau em centimetros? ');
	readln(DEGRAU);
	write('Qual altura deseja alcan�ar em metros? ');
	readln(ALTURA);
	NDEGRAUS := ALTURA / (DEGRAU / 100);
	writeln;
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	writeln;
	writeln('Voc� ter� que subir ', NDEGRAUS:0:0, ' degraus!');
	writeln;
	writeln('-==-==-==-==-==-==-==-==-==-==-==-==-==-==-==');
	readln;  
End.