Program ex022_pesoideal;
var H, P : real;
		S : char;		
Begin
	writeln;
	writeln('_______________________________________');
	writeln('         CALCULANDO PESO IDEAL         ');
	writeln('_______________________________________');
	writeln;
	writeln('Qual o seu sexo?');
	writeln('[ M ] Masculino');
	writeln('[ F ] Feminino');
	writeln;
	write('Sua opção: ');
	readln(S);
	case S of
		'M', 'm':
			begin
				writeln;
				write('Qual sua altura em metros? ');
				readln(H);
				P :=	72.7 * H - 58;
				writeln;
				writeln('_______________________________________');
				writeln;
			  writeln('   Seu peso ideal é de ', P:0:2, 'kg.  ');
			end;
		'F', 'f':
			begin
				writeln;
				write('Qual sua altura em metros? ');
				readln(H);
				P := 62.1 * H - 44.7;
				writeln;
				writeln('_______________________________________');
				writeln;
			  writeln('   Seu peso ideal é de ', P:0:2, 'kg.  ');
			end
		else
			begin
				writeln;
				writeln('_______________________________________');
				writeln;
				writeln('  Opção inválida, reinicie o programa! ');
			end;
	end;
	writeln('_______________________________________');
	readln;
End.