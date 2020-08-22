program ex019_baskara;
var A, B, C, D : Integer;
    XI, XII : Real ;
begin
  WriteLn('_____________________________________');
  WriteLn('    CALCULADORA DE BASKARA - v1.0    ');
  WriteLn('_____________________________________');
  WriteLn;
  Write('Digite o valor de A: ');
  ReadLn(A);
  while A = 0 do
    begin
      WriteLn;
      WriteLn('O valor de A deve ser diferente de 0.');
      Write('Entre novamente com o valor de A: ');
      ReadLn(A);
    end;
  WriteLn;
  Write('Digite o valor de B: ');
  ReadLn(B);
  while B = 0 do
    begin
      WriteLn;
      WriteLn('O valor de B deve ser diferente de 0.');
      Write('Entre novamente com o valor de B: ');
      ReadLn(B);
    end;
  WriteLn;
  Write('Digite o valor de C: ');
  ReadLn(C);
  while C = 0 do
    begin
      WriteLn;
      WriteLn('O valor de C deve ser diferente de 0.');
      Write('Entre novamente com o valor de C: ');
      ReadLn(C);
    end;
  D := (sqr(B) - (4*A*C));
  WriteLn('_____________________________________');
  WriteLn;
  if (D < 0) then
    begin
      WriteLn('Não existe uma raiz real!');
      WriteLn;
    end
  else if (D = 0) then
    begin
      WriteLn('Existe apenas uma raiz real!');
      XI := ((-B) + sqrt(D)) / (2 * A);
      WriteLn;
      WriteLn('X` = ', XI:0:2);
    end
  else
    begin
      WriteLn('Existem duas raizes reais!');
      XI := ((-B) + sqrt(D)) / (2 * A);
      XII := ((-B) - sqrt(D)) / (2 * A);
      WriteLn;
      WriteLn('X` = ', XI:0:2);
      WriteLn('X``= ', XII:0:2);
    end;
  WriteLn('_____________________________________');
  WriteLn('             FIM PROGRAMA            ');
  WriteLn('_____________________________________');
  ReadLn;
end.
