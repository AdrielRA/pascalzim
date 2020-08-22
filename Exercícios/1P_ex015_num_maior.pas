Program ex015_n_maior;
var N1, N2 : real;
Begin
	writeln('_______________________________________	
MOSTRA MAIOR NÚMERO - v1.0
_______________________________________	
	'); 
	write('Entre com o primeiro número: ');   
	readln(N1);    
	write('Entre com o segundo número: ');   
	readln(N2);
	writeln('_______________________________________');
	writeln; 
	if (N1 > N2) then
		writeln('O número maior é: ', N1:0:2)
	else if (N1 < N2) then
		writeln('O número maior é: ', N2:0:2)        
	else
		writeln(N1:0:2, ' e ', N2:0:2, ' são iguais!');      
  readln;
End.