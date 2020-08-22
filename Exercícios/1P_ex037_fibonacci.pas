program ex041_fibonacciusuariodefinetermo;
uses crt;
var I, N, F, ON : Integer;
begin
	clrscr;
	textcolor(14);
	writeln('___________________________________________');
	writeln('   SEQU�NCIA DE FIBONACCI AT� O 20� TERMO  ');
	writeln('___________________________________________');
	N := 1;
	ON := 0;
	textcolor(15);
  for I := 1 to 20 do
    begin
      write(' ', I:2:0 , '� termo: ');
      textcolor(14);
      write(N:6:0);
      textcolor(15);
      writeln(' |======================|');
      F := N + ON;
      ON := N;
      N := F;
    end;
  textcolor(14);
  writeln('___________________________________________');
  textcolor(15);
  readln;
end.