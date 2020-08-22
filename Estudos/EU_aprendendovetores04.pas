Program aprendendovetores;
uses crt;
var NOME : string;
		soC  : array[1..10] of string;
		C, T  : integer;
Begin
	textcolor(15);
	T := 0;
	for C := 1 to 10 do
		begin
			write(' Digite seu nome: ');
			readln(NOME);
			if (upcase(NOME[1]) = 'C') then
				begin
					T := T + 1;
					soC[T] := NOME;
				end;
		end;
	writeln;
	write('Nomes com C:');
	for C := 1 to T do
		write(' ', soC[C], ';');
	readln;
End.