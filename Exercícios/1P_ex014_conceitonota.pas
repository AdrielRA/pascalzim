Program ex014_conceitonota;
var NT, NA, NG, M : Real;
		V : Boolean;
begin
	WriteLn('========================================
         Calculando média final
========================================');
	WriteLn;
	Write('Entre com a nota de trabalho: ');
	ReadLn(NT);
	Write('Entre com a nota da avaliação: ');
	ReadLn(NA);
	Write('Entre com a nota global: ');
	ReadLn(NG);
	V := True;
	if (NT > 10) or (NA > 10) or (NG > 10) then
		begin
			V := False;
			WriteLn('========================================

Sua nota não pode ser maior que 10.');
			WriteLn;
		end;
	if V then
		begin
			M := (NT + NA + NG) / 3;
			WriteLn('========================================
Sua média é: ', M:0:2, '
========================================');
			if M >= 8 then
				WriteLn('Seu conceito é: A');
			if (M >= 6) and (M < 8) then
				WriteLn('Seu conceito é: B');
			if (M >= 4) and (M < 6) then
				WriteLn('Seu conceito é: C');
			if (M >= 3) and (M < 4) then
				WriteLn('Seu conceito é: D');
			if (M < 3) then
				WriteLn('Seu conceito é: E');
		end;
	readln;
end.
