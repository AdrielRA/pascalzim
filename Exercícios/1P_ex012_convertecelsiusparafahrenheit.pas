Program ex012_convertecelsiusparafahrenheit;
var C, F : real;
Begin
	writeln('__________________________________________________________');
	writeln('             CONVERTE CELSIUS PARA FAHRENHEIT             ');
	writeln('__________________________________________________________');
	writeln;
  write('Entre com a temperatura em Celsius: ');
  readln(C);
  F := C*9/5+32;
  writeln('__________________________________________________________');
  writeln;
	writeln('A temperatura ', C:0:2,'°C é equivalente a ', F:0:2, '°F.');
	readln;
End.