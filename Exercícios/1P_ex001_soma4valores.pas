program ex001_soma;
var A, S : real;
cont : Integer;
begin
	WriteLn('--------------------------');
	WriteLn('Calcula soma de 4 números.');
	WriteLn('--------------------------');
	WriteLn;
	cont := 0;
	S := 0.0;
	while (cont < 4) do
		begin
			cont := cont + 1;
			Write('Digite o ', cont, '° número: ');
			read (A);
			S := S + A;
		end;
	WriteLn;
	WriteLn('A soma dos quatro valores é igual a ', S:3:2, '.');
	readln;
end.

