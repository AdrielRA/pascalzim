Program ex006_calculosalario;
var HORAS  : integer;
    SALMINIMO, SALBRUTO, SALRECEBER, VH, IMP : real; 
Begin
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
	writeln('                 C�LCULO DE S�LARIO - v 1.0                 ');
	writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
  writeln;
  write('Quantidade de horas trabalhadas no m�s: ');
  readln(HORAS);
  if (HORAS > 240)
		Then begin
						writeln;
						writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
  					writeln('Voc� est� sendo explorado! N�o trabalhe mais que 8h por dia!');
  				  writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
					end
  	Else begin
  					write('Valor do sal�rio m�nimo: R$');
		  			readln(SALMINIMO);
						VH := SALMINIMO / 30 / 8;
						SALBRUTO := VH * HORAS * 1.5;
						IMP := SALBRUTO * 0.03;
						SALRECEBER := SALBRUTO - IMP;
						writeln;
						writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
						writeln('        O valor do s�lario a receber: R$', SALRECEBER:6:2);
						writeln('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
					end;
	readln;	
End.