Program ex036_fatorial;
uses crt;
var N, F, C : integer;
Begin
  clrscr;
  writeln('___________________________________________');
  writeln('            CALCULANDO FATORIAL            ');
  writeln('___________________________________________');
  writeln;
  F := 0;
  write('Número: ');
  readln(N);
  if (N > 1) then
  begin
    for C := 1 to N do
    	F := F + N-1;
  end
  else
  	F := 1;
  writeln('___________________________________________');
  writeln;
  writeln('O fatorial de ', N, ' é ', F);
  readln;
End.

