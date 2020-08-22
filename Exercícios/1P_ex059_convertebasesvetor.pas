Program ex059_convertebasesvetor;
uses crt;
var BIN, OCT, HEX                : array[1..20] of integer;
		HEXF                         : array[1..20] of string;
		N                            : longint;   
		BASE, SAIR, C, I, OC, VALMAX : integer;		
		
Begin
	repeat
		begin
			clrscr;
			textcolor(14);
			writeln('_________________________________________________');
			writeln('           CONVERTENDO BASES NÚMERICAS           ');
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			write(' Digite um valor de base 10: ');
			readln(N);
			while (N < 0) or (N > 2147483647) do
				begin
					textcolor(12);
						write(' Valor não suportado! Use um valor diferente: ');
					textcolor(14);
					readln(N);
				end;
			textcolor(14);
			writeln('_________________________________________________');
			writeln;
			textcolor(15);
			writeln(' ESCOLHA A BASE PARA CONVERSÃO:');
			writeln;
			writeln(' [ 1 ] Binário');
			writeln(' [ 2 ] Octal');
			writeln(' [ 3 ] Hexadecimal');
			writeln;
			write(' Sua opção: ');
			textcolor(10);
			readln(BASE);
			while (BASE < 1) or (BASE > 3) do
				begin
					textcolor(12);
					write(' Opção inválida. Digite novamente: ');
					textcolor(14);
					readln(BASE);
				end;
			textcolor(15);
			clrscr;
			textcolor(14);
			writeln('_________________________________________________');
			writeln('                    RESULTADO                    ');
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			case BASE of
				1:begin
						VALMAX := 1048575;			
						if (N > 0) then
							begin 
								if (N <= VALMAX) then
									begin
										for I := 20 downto 1 do
											begin
												BIN[I] := (N)mod(2);
												N := (N)div(2);
											end;
										C := 0;
										while (BIN[1] = 0) do
											begin
												for I := 1 to 19 do
													begin
														BIN[I] := BIN[I+1];
													end;
												C := C + 1;
											end;
										write(' Número convertido: ');
										textcolor(11);
										for I := 1 to (20 - C) do
											write(BIN[I]);
									end
								else
									begin
										textcolor(13);
										write(' Número convertido muito grande, descule! *_*');
									end;
							end
						else
							begin 
								write(' Número convertido: ');
								textcolor(11);
								write('0');
							end;	
					end;
				2:begin
						for I := 1 to 20 do
							begin
								OCT[I] := 0;
							end;
						VALMAX := 2147483647; // impossivel ir até 20 digitos, não caberia mesmo com variavel longint. Pascalzim não aceita Double.			
						if (N > 0) then
							begin
								if (N <= VALMAX) then
									begin
										for I := 20 downto 1 do
											begin
												if N <> 0 then
													begin
														OCT[I] := (N)mod(8);
														N := (N)div(8);
													end; 
											end;
										C := 0;
										while (OCT[1] = 0) do
											begin
												for I := 1 to 19 do
													begin
														OCT[I] := OCT[I+1];
													end;
												C := C + 1;
											end;
										write(' Número convertido: ');
										textcolor(11);
										for I := 1 to (20 - C) do
											write(OCT[I])
									end
								else
									begin
										textcolor(13);
										write(' Número convertido muito grande, descule! *_*');
									end;
							end
						else
							begin 
								write(' Número convertido: ');
								textcolor(11);
								write('0');
							end;
					end;
				3:begin
						VALMAX := 2147483647; // impossivel ir até 20 digitos, não caberia mesmo com variavel longint. Pascalzim não aceita Double.			
						if (N > 0) then
							begin
								if (N <= VALMAX) then
									begin
										for I := 20 downto 1 do
											begin
												if N <> 0 then
													begin
														HEX[I] := (N)mod(16);
														N := (N)div(16);
													end; 
											end;
										C := 0;
										while (HEX[1] = 0) do
											begin
												for I := 1 to 19 do
													begin
														HEX[I] := HEX[I+1];
													end;
												C := C + 1;
											end;
										for I := 1 to (20 - C) do
											begin
												if HEX[I] = 0 then
												  HEXF[I] := '0'
												else if HEX[I] = 1 then
													HEXF[I] := '1'
												else if HEX[I] = 2 then
													HEXF[I] := '2'
												else if HEX[I] = 3 then
													HEXF[I] := '3'
												else if HEX[I] = 4 then
													HEXF[I] := '4'
												else if HEX[I] = 5 then
													HEXF[I] := '5'
												else if HEX[I] = 6 then
													HEXF[I] := '6'
												else if HEX[I] = 7 then
													HEXF[I] := '7'
												else if HEX[I] = 8 then
													HEXF[I] := '8'
												else if HEX[I] = 9 then
													HEXF[I] := '9'	
												else if HEX[I] = 10 then
													HEXF[I] := 'A'
												else if HEX[I] = 11 then
													HEXF[I] := 'B'
												else if HEX[I] = 12 then
													HEXF[I] := 'C'
												else if HEX[I] = 13 then
													HEXF[I] := 'D'
												else if HEX[I] = 14 then
													HEXF[I] := 'E'
												else if HEX[I] = 15 then
													HEXF[I] := 'F';
											end;
										write(' Número convertido: ');
										textcolor(11);
										for I := 1 to (20 - C) do
											write(HEXF[I])
									end
								else
									begin
										textcolor(13);
										write(' Número convertido muito grande, descule! *_*');
									end;
							end
						else
							begin 
								write(' Número convertido: ');
								textcolor(11);
								write('0');
							end;
					end;
			end;
			writeln;
			textcolor(14);
			writeln('_________________________________________________');
			textcolor(15);
			writeln;
			write(' Converter outro número? [ 1 ] Sim [ 0 ] Não: ');
			textcolor(10);
			readln(SAIR);
			while (SAIR < 0) or (SAIR > 1) do
				begin
					textcolor(12);
					write(' Opção inválida. Digite novamente: ');
					textcolor(14);
					readln(SAIR);
				end;
			textcolor(15);
		end;
	until (SAIR = 0);
End.