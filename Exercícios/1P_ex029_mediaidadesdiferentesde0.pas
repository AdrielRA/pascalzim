Program ex029_mediaidadesdiferentesde0;
var IDADE, SOMAID, CONT : integer;
		OP : boolean;
Begin
	writeln('______________________________________');
	writeln('      CALCULANDO M�DIA DE IDADES      ');
	writeln('Digite 0 para sair a qualquer momento.' );
	writeln('______________________________________');
	writeln;
	OP := True;
	SOMAID := 0;
	CONT := 0;
	while OP do
		begin
			write('Entre com a ', (CONT + 1):2:0, '� idade: ');
			readln(IDADE);
			SOMAID := SOMAID + IDADE;
			if IDADE = 0 then
				OP := False
			else 
				CONT := CONT + 1;			
		end;
	writeln;
	writeln('______________________________________');
	writeln;
	if CONT = 0 then
		writeln('Nenhuma idade foi digitada!')
	else
		writeln('A m�dia das idades digitas �: ', (SOMAID / CONT):0:2, ' anos.'); 
	readln;  
End.