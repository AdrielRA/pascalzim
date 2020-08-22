Program ex009_amostradeareadetrapezio;
var BAM, Bm, A, H : real;
Begin	
	writeln('__________________________________________________________');
	writeln('       ÁREA DO TRAPÉZIO       ');
	writeln('__________________________________________________________');
	writeln;				
  write('Qual a base maior em cm²?: ');
  readln(BAM);
  write('Qual a base menor em cm²?: ');
  readln(Bm);
  while (Bm >= BAM) do
		begin
			writeln;
			writeln('__________________________________________________________');
	  	writeln('A base menor não pode ser maior ou igual a base maior.');
	  	writeln;
	  	write('Entre com a base menor válida em cm²: ');
	  	readln(Bm);
	  end;
  write('Entre com a altura: ');
  readln(H);
  A := (BAM+Bm)/2*H;
  writeln('__________________________________________________________');
  writeln;
	write('A altura é: ',A:0:2,'cm².');
	readln; 
End.
