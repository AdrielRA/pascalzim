program ex002_media3notas;
var n1, S, M : real;
cont : integer;
begin
	WriteLn('-----------------');
	WriteLn('Média de 3 notas.');
	WriteLn('-----------------');
	WriteLn;
	cont := 0;
	S := 0.0;
	while (cont < 3) do
		begin
			cont := cont + 1;
			Write('Digite a ', cont, '° nota: ');
			Read(n1);
			S := S + n1;
		end;
	M := S / 3;
	WriteLn;
	WriteLn('A média das 3 notas é ', M:3:2, '.');
	readln;
end.