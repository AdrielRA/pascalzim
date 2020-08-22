Program ex039_MDC;
uses crt;
var N1, N2, MA, ME, MDC, R : integer;
		OP                     : boolean;
		P                      : char;
Begin
  OP := True;
  while OP do
	  begin
	    clrscr;
	    textcolor(14);
	    writeln('___________________________________________');
	    writeln('    ENCONTRANDO O MÁXIMO DIVISOR COMUM!    ');
	    writeln('___________________________________________');
	    writeln;
	    textcolor(15);
	    write(' 1º Número: ');
	    textcolor(10);
	    readln(N1);
	    textcolor(15);
	    write(' 2º Número: ');
	    textcolor(10);
	    readln(N2);
	    textcolor(14);
	    writeln('___________________________________________');
	    textcolor(15);
	    writeln;
	    if (N1 >= N2) then
		    begin
		      MA := N1;
		      ME := N2;
		    end
	    else
		    begin
		      MA := N2;
		      ME := N1;
		    end;
	    repeat
	      begin
	        R := (MA)mod(ME);
	        MA := ME;
	        ME := R;
	      end;
	    until ME = 0;
	    writeln(' O MDC de ', N1,' e ', N2, ' é: ', MA);
	    textcolor(14);
	    writeln('___________________________________________');
	    textcolor(15);
	    writeln;
	    write('Deseja retornar? [ S ] Sim [ N ] Não: ');
	    textcolor(10);
	    readln(P);
	    textcolor(15);
	    while (P <> 'n') and (P <> 'N') and (P <> 'S') and (P <> 's') do
		    begin
		      write('Use apenas [ S ] Sim [ N ] Não: ');
		      readln(P);
		    end;    
	    if (P = 'N') or (P = 'n') then
		    begin
		      clrscr;
		      textcolor(12);
		      writeln('___________________________________________');
		      writeln('            PROGRAMA FINALIZADO            ');
		      writeln('___________________________________________');
		      OP := False;
		    end;
	  end;
  readln;
  clrscr;
End.