Program ex026_novoprecocondicional;
var PA, VM, NP : real;
		I : integer;
Begin
	writeln('_________________________________');
	writeln('    CALCULO PRE�O CONDICIONAL    ');
	writeln('_________________________________');
	writeln;
	write('Entre com o pre�o atual: R$');
	readln(PA);
	write('Entre com a venda m�dia: ');
	readln(VM);
	if (VM < 500) or (PA < 30) then
		NP := PA * 1.1
	else if (VM < 1200) or (PA < 80) then
		NP := PA * 1.15
		else NP := PA * 0.8;
	writeln('_________________________________');
	writeln;
	writeln('          CALCULANDO...          ');
	I := 0;
	while I < 3000000 do
		I := I + 1;
	writeln('_________________________________');
	writeln;
	writeln('Novo pre�o: R$', NP:0:2);
  readln;
End.