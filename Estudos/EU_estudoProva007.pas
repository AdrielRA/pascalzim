Program EU_estudoProva007;
uses crt;
var X, Y     : array[1..5] of real;
		PE       : real;
		I, V, OP : integer;
Begin
	clrscr;
	repeat
		begin
		  textcolor(15);
		  PE := 0;
		  for I := 1 to 5 do
		  	begin
		  		X[I] := random(11);
		  		Y[I] := random(11);
		  		PE := PE + X[I] * Y[I];
		  	end;
		  V := 1;
		  write('VETOR 1: ');
		  for I := 1 to 5 do
		  	begin
		  		if V = 1 then
		  			write(X[I]:5:2, ' ')
		  		else
		  			write(Y[I]:5:2,' ');
		  		if (I = 5) and (V = 1) then
						begin
							writeln;
							write('VETOR 2: ');
							V := 2;
							I := 0;
						end;
		  	end;
		  writeln;
		  writeln;
		  writeln('PRODUTO ESCALAR: ', PE:5:2);
		  writeln;
		  write('[ESC] Sair [ENTER] Continuar: ');
		  OP := ord(readkey);
		  clrscr;
		end;
	until OP = 27;
End.