Program ex015_n_maior;
var N1, N2 : real;
Begin
	writeln('_______________________________________	
MOSTRA MAIOR N�MERO - v1.0
_______________________________________	
	'); 
	write('Entre com o primeiro n�mero: ');   
	readln(N1);    
	write('Entre com o segundo n�mero: ');   
	readln(N2);
	writeln('_______________________________________');
	writeln; 
	if (N1 > N2) then
		writeln('O n�mero maior �: ', N1:0:2)
	else if (N1 < N2) then
		writeln('O n�mero maior �: ', N2:0:2)        
	else
		writeln(N1:0:2, ' e ', N2:0:2, ' s�o iguais!');      
  readln;
End.