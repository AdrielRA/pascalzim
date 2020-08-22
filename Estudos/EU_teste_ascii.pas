program teste_ascii;
uses crt;
var I, COD : byte;
		V, ESP : boolean;
 
begin
	textcolor(15);
  V := False;
  I := 0;
 	repeat
 		if (I = 0) or (I = 1) or (I >= 20) then
 			begin
 				clrscr;
 				writeln('___________________________________________');
				writeln('          CÓDIGO ASCII DAS TECLAS          ');
			  writeln('___________________________________________');
			  writeln;
			  if I >= 20 then
					I := 1
			  else if I <> 0 then
			  	if COD <> 0 then
				  	begin
				  		I := I + 1;
						  write('Digite uma tecla (Esc para sair): ');
						  writeln(chr(COD), ' Codigo ASCII: ', COD);
						  if ESP then
				    		begin
				    			gotoxy(35, whereY-1);
				    			write(' ');
									gotoxy(1, whereY+1);
				    		end;
						end;
 			end;
 		I := I + 1;
 		if V then
 			begin
 				ESP := False;
 			end
 		else V := True;
    write('Digite uma tecla (Esc para sair): ');
    COD := ord(readkey);
    if (COD = 0) then
    	begin
 				gotoxy(1,whereY);
 				ESP := True;
 				V := False;
 				I := I - 1;
    	end
    else
    	begin
	    	writeln(chr(COD), ' Codigo ASCII: ', COD);
	    	if ESP then
	    		begin
	    			gotoxy(35, whereY-1);
	    			write(' ');
						gotoxy(1, whereY+1);
	    		end;
	    end;
    if (COD = 13) then
    	begin
    		I := 1;
    	end;
  until (COD = 27);
end.
  