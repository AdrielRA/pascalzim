Program Pzim ;
uses crt;
var V : array[1..20] of integer;
		I, J, M, N: integer;
		OP : char;
Begin
	textcolor(15);
	repeat
		begin
			for I := 1 to 20 do
				begin
					V[I] := random(7);
					while (V[I] = 0) do
						V[I] := random(7);
				end;
			for I := 1 to 20 do
				write(V[I], ' ');
			writeln;
			writeln;
		  for I := 1 to 6 do
		   	begin
		   		N := I;
 					M := 0;
 					for J := 1 to 20 do
 						begin
							if V[J] = I then
								M := M + 1;	
						end;
					writeln('O número ', N, ' apareceu ', M, ' vezes!');
		   	end;
		  writeln;
		  write('Pressione ESC para sair... ');
		  OP := readkey;
		  clrscr;
  	end;
  until (ord(OP) = 27);
End.