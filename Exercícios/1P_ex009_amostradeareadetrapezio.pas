Program ex009_amostradeareadetrapezio;
var BAM, Bm, A, H : real;
Begin	
	writeln('__________________________________________________________');
	writeln('       �REA DO TRAP�ZIO       ');
	writeln('__________________________________________________________');
	writeln;				
  write('Qual a base maior em cm�?: ');
  readln(BAM);
  write('Qual a base menor em cm�?: ');
  readln(Bm);
  while (Bm >= BAM) do
		begin
			writeln;
			writeln('__________________________________________________________');
	  	writeln('A base menor n�o pode ser maior ou igual a base maior.');
	  	writeln;
	  	write('Entre com a base menor v�lida em cm�: ');
	  	readln(Bm);
	  end;
  write('Entre com a altura: ');
  readln(H);
  A := (BAM+Bm)/2*H;
  writeln('__________________________________________________________');
  writeln;
	write('A altura �: ',A:0:2,'cm�.');
	readln; 
End.
