Program EU_cadeiracinema;
uses crt;
var CADEIRAS, C   : array[1..10] of integer;
		RESERVA, A, B : integer;
		OP            : char;
		LOOP          : boolean;
Begin
	LOOP := True;
	for A := 1 to 10 do
			begin
				CADEIRAS[A] := A;
			end;
	for A := 1 to 10 do
			begin
				C[A] := 0;
			end;
	while LOOP do
		begin
			clrscr;
			textcolor(14);
			writeln(' ________________________________________________ ');
			writeln('|          ESCOLHENDO CADEIRA NO CINEMA          |');
			writeln('|________________________________________________|');
			writeln;
			for A := 1 to 10 do
				begin
					if (C[A] = 1) then
						write('[--] ')
					else
						write('[B', CADEIRAS[A], '] ');
				end;
			textcolor(15);
			writeln;
			B := 0;	
			for A := 1 to 10 do
				begin
					if (C[A] = 1) then
						B := B + 1;
				end;
			if (B = 10) then
				begin
					LOOP := False;
					textcolor(12);
					writeln;
					writeln(' Todas as cadeiras estão reservadas!');
					textcolor(12);
				end
			else
				begin
				writeln;
				write(' Reservar a cadeira núm.: ');
				readln(RESERVA);
				for A := 1 to 10 do
					begin
						if (CADEIRAS[A] = RESERVA) then
							begin
								if (C[A] = 0) then
									begin
										writeln(' Cadeira B', CADEIRAS[A], ' RESERVADA!');
										C[A] := 1;
									end
								else
									begin
										textcolor(12);
										write(' CADEIRA OCUPADA!');
										textcolor(15);
									end;
							end;
					end;
				writeln;
				write(' Fazer outra reserva? [S/N]: ');
				readln(OP);
				if upcase(OP) = 'N' then
					LOOP := False;
			end;
		end;
	readln;
End.