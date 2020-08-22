program tb001_distanciapontos;
var A1, A2, B1, B2, D : Real;
begin
  Write('Entre com o 1º ponto: ');
  ReadLn(A1);
  Write('Entre com o 2° ponto: ');
  ReadLn(A2);
  Write('Entre com o 3° ponto: ');
  ReadLn(B1);
  Write('Entre com o 4° ponto: ');
  ReadLn(B2);
  D := sqrt(sqr(B1 - A1) + sqr(B2 - A2));
  WriteLn('Resultado: ', D:0:2);
  readln;
end.
