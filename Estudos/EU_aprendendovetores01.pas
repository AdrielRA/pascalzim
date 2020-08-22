Program aprendendo_vetores;
uses crt;
var vet : array[1..6] of integer;
		C : integer;
Begin
	textcolor(15);
	writeln('Aprendendo VETORES:');
	writeln;
	for C := 1 to 6 do
  	begin
  		write('Digite o ', C, 'º número: ');
  		readln(vet[C]);
		end;
	writeln;
	write('VETORES: ');
	for C := 1 to 6 do
		write('{', vet[C], '}');
	readln;	
End.