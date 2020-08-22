program P_ex21_cargosalario;
var SAL, AUM : Real;
    CAR : Integer;
    PRO : String;
begin
  Writeln('___________________________________');
  WriteLn('|       CALCULADORA SALARIAL      |');
  WriteLn('___________________________________');
  WriteLn;
  Write('Qual o seu salário? R$');
  ReadLn(SAL);
  WriteLn;
  Write('Qual o seu cargo?');
  WriteLn;
  WriteLn('[ 1 ] Escritório');
  WriteLn('[ 2 ] Secretário');
  WriteLn('[ 3 ] Caixa');
  WriteLn('[ 4 ] Gerente');
  WriteLn('[ 5 ] Diretor');
  WriteLn;
  Write('Sua opção: ');
  ReadLn(CAR);
  if CAR = 1 then
    begin
      AUM := SAL * 0.5;
      SAL := SAL + AUM;
      PRO := 'Escritório';
    end
  else if CAR = 2 then
    begin
      AUM := SAL * 0.35;
      SAL := SAL + AUM;
      PRO := 'Secretário';
    end
  else if CAR = 3 then
    begin
      AUM := SAL * 0.2;
      SAL := SAL + AUM;
      PRO := 'Caixa';
    end
  else if CAR = 4 then
    begin
      AUM := SAL * 0.1;
      SAL := SAL + AUM;
      PRO := 'Gerente';
    end
  else if CAR = 5 then
    begin
       AUM := 0;
       SAL := SAL + AUM;
       PRO := 'Diretor';
    end
  else
    begin
      WriteLn('Opção inválida! Reinicie o programa.');
    end;
  WriteLn('___________________________________');
  WriteLn('|Cargo:      |Aumento:  |Novo Sal: |');
  WriteLn('___________________________________');
  WriteLn('| ', PRO, ' | R$', AUM:0:2, ' | R$', SAL:0:2, ' |');
  WriteLn('___________________________________');
  readln;
end.
