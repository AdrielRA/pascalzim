Program aprendendovetores;
uses crt;
var VET  : array[1..7] of integer;
		C, P : integer;
Begin
	textcolor(15);
	P := 0;
	writeln('CONTANDO PARES DIGITADOS - VETORES');
	writeln;
	for C := 1 to 7 do
		begin
			write('Digite o ', C, '� n�mero: ');
			readln(VET[C]);
		end;
		writeln;
		write('POSI��ES DE CADA VALOR PAR: ');
		for C := 1 to 7 do
			begin
				if ((vet[C])mod(2) = 0) then
					begin
						P := P + 1;
						write('{', C,'}');
					end;
			end;
		writeln;
		writeln('Quantidade de n�m. pares digitados: ', P);
		readln;  
End.