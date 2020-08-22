Program ex016_numeropar;
var NUM, D : integer;
Begin
	writeln('____________________________________
 ANALISADOR DE NÚMEROS PARES - v1.0
____________________________________
');
	write('Entre com o número: ');
	readln(NUM);
	D := (NUM)MOD(2); 
	writeln('____________________________________
	');
	if (D = 0) then
		writeln(NUM, ' é um número par!')
	else
		writeln(NUM, ' não é um número par!');
  readln;
End.