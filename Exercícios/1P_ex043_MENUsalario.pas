Program ex043_MENUsalario;
var OPMENU, MESES : integer;
		LOOP          : boolean;
		SAL           : real;
Begin
	LOOP := True;
	while LOOP do
		begin
			textcolor(14);
			writeln('_________________________________________________');
			writeln('                C�LCULOS SALARIAIS               ');
			writeln('_________________________________________________');
			textcolor(15);
			writeln(' Use apenas os c�digos: ');
			writeln;
			writeln(' [ 1 ] Novo Sal�rio');
			writeln(' [ 2 ] F�rias');
			writeln(' [ 3 ] D�cimo Terceiro');
			writeln(' [ 4 ] Sair');
			textcolor(14);
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			write(' Sua op��o: ');
			textcolor(10);
			readln(OPMENU);
			textcolor(15);
			while (OPMENU < 1) or (OPMENU > 4) do
				begin
					textcolor(12);
					writeln(' Op��o inv�lida!');
					textcolor(15);
					write(' Sua op��o: ');
					textcolor(10);
					readln(OPMENU);
					textcolor(15);
				end;
			case OPMENU of
				1:
					begin
						textcolor(14);
						writeln('_________________________________________________');
					  textcolor(15);
					  writeln;
						write(' Entre com seu sal�rio: R$');
						textcolor(10);
						readln(SAL);
						textcolor(15);
						if (SAL <= 210) then
							SAL := SAL * 1.15
						else if (SAL <= 600) then
							SAL := SAL * 1.10
						else
							SAL := SAL * 1.05;
						writeln(' Seu novo sal�rio: R$', SAL:0:2);
						textcolor(14);
						writeln('_________________________________________________');
					  textcolor(15);
						writeln(' Pressione qualquer tecla para continuar...');
						readln;
						clrscr;
					end;
				2:
					begin
						textcolor(14);
						writeln('_________________________________________________');
					  textcolor(15);
					  writeln;
						write(' Entre com seu sal�rio: R$');
						textcolor(10);
						readln(SAL);
						textcolor(15);
						SAL := SAL + SAL / 3;
						writeln(' Valor das f�rias: R$', SAL:0:2);
						textcolor(14);
						writeln('_________________________________________________');
					  textcolor(15);
						writeln(' Pressione qualquer tecla para continuar...');
						readln;
						clrscr;
					end;			
				3:
					begin
						textcolor(14);
						writeln('_________________________________________________');
					  textcolor(15);
					  writeln;
						write(' Entre com seu sal�rio: R$');
						textcolor(10);
						readln(SAL);
						textcolor(15);
						writeln;
						write(' Entre com n� de meses: ');
						textcolor(10);
						readln(MESES);
						textcolor(15);
						while (MESES > 12) do
							begin
								textcolor(14);
								write(' Meses deve ser menor que 12: ');
								textcolor(10);
								readln(MESES);
								textcolor(15);
							end;
						SAL := SAL * MESES / 12;
						writeln(' Valor do 13�: R$', SAL:0:2);
						textcolor(14);
						writeln('_________________________________________________');
					  textcolor(15);
						writeln(' Pressione qualquer tecla para continuar...');
						readln;
						clrscr;
					end;
				4:
					begin
						clrscr;
						LOOP := False;
						textcolor(12);
						writeln('_________________________________________________');
						writeln('               PROGRAMA FINALIZADO               ');
						writeln('_________________________________________________');
						textcolor(15);
						readln;
						clrscr;
					end;
			end;
		end;
End.