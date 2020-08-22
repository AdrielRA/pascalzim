program ex020_analisadordetriangulos;
var A, B, C : real;
    condicao : boolean;
begin
	writeln('_____________________________________');
  writeln('   ANALISADOR DE TRIÂNGULOS - v1.0   ');
  writeln('_____________________________________');
  write('Primeiro segmento: ');
	readln(A);
	write('Segundo segmento: ');
	readln(B);
	write('Terceiro segmento: ');
 	readln(C);
 	condicao := (((B - C) < A) and (A < (B + C))) and (((A - C) < B) and (B < (B + C))) and (((A-B) < C) and (C < (A + B)));
	if condicao then
		begin
      WriteLn;
      WriteLn('Os segmentos acima PODEM FORMAR um triângulo ');
		  if (A = B) and (B = C) then
		  	begin
          writeln('EQUILÁTERO!');
        end
		  else if (A = B) or (A = C) or (B = C) then
				begin
				  writeln('ISÓSCELES!');
				end
		  else
		    begin
					writeln('ESCALENO!');
				end;
		end
	else
		begin
		  WriteLn;
      WriteLn('Os segmentos acima NÃO PODEM FORMAR triângulo!');
    end;
	readln;
End.
