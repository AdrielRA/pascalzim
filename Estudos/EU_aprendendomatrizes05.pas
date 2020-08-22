Program aprendendomatrizes05;
uses crt;
var MAT  : array[1..100,1..100] of integer;
		L, C, NL, NC, OP : integer;
		
procedure MENU();
	begin
		textcolor(14);
		writeln('_________________________________________________');
		writeln('                  MENU DE OPÇÕES                 ');
		writeln('_________________________________________________');
		textcolor(15);
		writeln;
		writeln(' [ 1 ] Exibir Matriz');
		writeln(' [ 2 ] Exibir Diagonal Principal');
		writeln(' [ 3 ] Exibir Triângulo Superior');
		writeln(' [ 4 ] Exibir Triângulo Inferior');
		writeln(' [ 5 ] Alterar valores da Matriz');
		writeln(' [ 6 ] Sair');
		writeln;
		write(' Sua opção: ');
		textcolor(10);
		readln(OP);
		clrscr;
		textcolor(15);
	end;

procedure MATRIZ();
	begin
		clrscr;
		textcolor(14);
		writeln('_________________________________________________');
	  writeln('                DEFININDO A MATRIZ               ');
	  writeln('_________________________________________________');
	  textcolor(15);
	  writeln;
		write(' Quantidade de linhas: ');
		readln(NL);
		write(' Quantidade de colunas: ');
		readln(NC);
		for L := 1 to NL do
			for C := 1 to NC do
				begin
					clrscr;
					textcolor(14);
					writeln('_________________________________________________');
				  writeln('                DEFININDO A MATRIZ               ');
				  writeln('_________________________________________________');
				  textcolor(15);
				  writeln;
					write(' Digite o valor da posição ', L, 'x', C, ': ');
					readln(MAT[L,C]);
				end;
		clrscr;
		MENU();
	end;

Begin
	MATRIZ();
	while True do
		begin
			case OP of
				1:begin
						for L := 1 to NL do
							begin
								for C := 1 to NC do
									write(MAT[L,C]:3:0, ' '); 
								writeln;
							end;	
						writeln;
						MENU();
					end;
				2:begin
						for L := 1 to NL do
							begin
								for C := 1 to NC do
									begin
										if C = L then
											write(MAT[L,C]:3:0, ' ')
										else write('    ');
									end;
								writeln;
							end;
						writeln;
						MENU;	
					end;
				3:begin
						for L := 1 to NL do
							begin
								for C := 1 to NC do
									begin
										if C > L then
											write(MAT[L,C]:3:0, ' ')
										else write('    ');
									end;
								writeln;
							end;
						writeln;
						MENU;
					end;
				4:begin
						for L := 1 to NL do
							begin
								for C := 1 to NC do
									begin
										if C < L then
											write(MAT[L,C]:3:0, ' ')
										else write('    ');
									end;
								writeln;
							end;
						writeln;
						MENU;
					end;
				5:MATRIZ();
				6:begin
						textcolor(12);
						write(' FINALIZADO! ');
						break;
					end;
				else begin
						textcolor(12);
						writeln;
						writeln(' Opção inválida! Escolha Novamente.');
						MENU();
					end;
			end;
		end;
	readln;
End.