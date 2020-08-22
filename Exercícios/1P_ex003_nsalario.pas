program ex003_nsalario;
var SAL, nSAL : Real;
begin
	WriteLn('--------------------');
	WriteLn('Cálculo de reajuste.');
	WriteLn('--------------------');
	WriteLn;
	Write('Digite seu salário atual: R$');
	ReadLn(SAL);
	nSAL := SAL * 1.25;
	WriteLn;
	WriteLn('Com aumento de 25%, passa a receber R$', nSAL:3:2, '.');
	readln;
end.

