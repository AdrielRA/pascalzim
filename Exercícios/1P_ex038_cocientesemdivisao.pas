program ex038_cocientesemdivisao;
uses crt;
var C, N1, N2 : integer;
		OP        : boolean;
		P         : char;
begin
	OP := True;
	while OP do
		begin
			clrscr;
			textcolor(14);
			writeln('___________________________________________');
			writeln('    DIVIS�O SEM UTILIZA��O DE OPERADORES   ');
			writeln('___________________________________________');
			textcolor(15);
			writeln;
		  write(' Entre com o 1� n�mero: ');
		  textcolor(10);
		  readln(N1);
		  textcolor(15);
		  write(' Entre com o 2� n�mero: ');
		  textcolor(10);
		  readln(N2);
		  while (N2 = 0) do
		  	begin
		  		textcolor(12);
		  		writeln(' Imposs�vel dividir por 0.');
		  		textcolor(15);
		  		write(' Entre com o 2� n�mero: ');
		  		textcolor(10);
		  		readln(N2);
		  	end;
		  textcolor(14);
		  writeln('___________________________________________');
			textcolor(15);
			writeln;
			C := 0;
		  while N1 >= N2 do
		  	begin
		  		N1 := N1 - N2;
		  		inc(C); 
				end; 	
		  write(' Quociente da divis�o : ');
		  textcolor(10);
		  writeln(C);
		  textcolor(15);
		  write(' Resto da divis�o     : ');
		  textcolor(10);
		  writeln(N1);
		  textcolor(14);
		  writeln('___________________________________________');
			textcolor(15);
			writeln;
	    write('Deseja retornar? [ S ] Sim [ N ] N�o: ');
	    textcolor(10);
	    readln(P);
	    textcolor(15);
	    while (P <> 'n') and (P <> 'N') and (P <> 'S') and (P <> 's') do
		    begin
		      write('Use apenas [ S ] Sim [ N ] N�o: ');
		      readln(P);
		    end;    
	    if (P = 'N') or (P = 'n') then
		    begin
		      clrscr;
		      textcolor(12);
		      writeln('___________________________________________');
		      writeln('            PROGRAMA FINALIZADO            ');
		      writeln('___________________________________________');
		      OP := False;
		    end;
		end;
  readln;
  clrscr;
end.
