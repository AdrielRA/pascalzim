program ex046_aprendendovetores;
uses crt;
var N    : array[1..4] of real;
    S, M : real;
    I    : integer;
begin
  clrscr;
  S := 0;
  for I := 1 to 4 do
    begin
      write(' ', I, '� nota: ');
      readln(N[I]);
      S := S + N[I];
    end;
  clrscr;
  M := S/4;
  for I := 1 to 4 do
    writeln(' ', I, '� nota = ', N[I]);
  writeln;
  writeln(' M�dia = ', M:0:2);
  readln;
end.
