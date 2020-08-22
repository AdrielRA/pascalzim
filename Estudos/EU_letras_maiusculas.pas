Program teste_primeira_letra_Maiuscula;
var F : string;
		I : integer;
Begin
	write(' Digite uma frase: ');
	readln(F);
	F[1] := upcase(F[1]);
	for I := 1 to length(F) do
		begin
			if (F[I] = ' ') then
				F[I+1] := upcase(F[I+1]);
		end;
	writeln(F);
	readln;  
End.