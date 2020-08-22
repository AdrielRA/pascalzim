Program ex004_valorcarronovo;
var PF, PL, PIMP, LUCRO, IMP, VFINAL: real;
Begin
  writeln('------------------------------------');
	writeln('Calculo do valor final de um veículo');
	writeln('------------------------------------');
	writeln;
	write('Entre com o preço de fábrica:     R$');
	readln(PF);
	write('Entre com o percentual de lucro:    ');
	readln(PL);
	write('Entre com o percentual de impostos: ');
	readln(PIMP);
	LUCRO := PF * PL / 100;
	IMP := PF * PIMP /100;
	VFINAL := PF + LUCRO + IMP;
	writeln;
	writeln('------------------------------------');
	writeln;
	writeln('Lucro:       R$', LUCRO:10:2);
	writeln('Impostos:    R$', IMP:10:2);
	writeln('Valor final: R$',VFINAL:10:2);
	writeln;
	writeln('------------------------------------');
	readln;	
End.