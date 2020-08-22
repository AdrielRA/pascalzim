PROGRAM ASCII;
USES CRT;
VAR
	tecla : CHAR;
	codigo : BYTE;
	
BEGIN
	WRITELN('Programa para descobrir o codigo ASCII de determinada tecla');
	WRITELN('Versao 0.1 - Por Dalton - 2SI Cesumar - 09/02/2007');
	WRITELN;
	
	REPEAT
		WRITE('Digite uma tecla (Esc para sair): ');
		tecla := READKEY;
		codigo := BYTE(tecla);
		WRITELN('  Codigo ASCII: ', codigo);
	UNTIL codigo = 27;
END.
