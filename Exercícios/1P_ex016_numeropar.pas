Program ex016_numeropar;
var NUM, D : integer;
Begin
	writeln('____________________________________
 ANALISADOR DE N�MEROS PARES - v1.0
____________________________________
');
	write('Entre com o n�mero: ');
	readln(NUM);
	D := (NUM)MOD(2); 
	writeln('____________________________________
	');
	if (D = 0) then
		writeln(NUM, ' � um n�mero par!')
	else
		writeln(NUM, ' n�o � um n�mero par!');
  readln;
End.