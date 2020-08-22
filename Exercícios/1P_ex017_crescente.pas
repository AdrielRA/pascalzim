Program ex017_crescente;
var NUM1, NUM2, NUM3, ME, MD, MA : real;
		V : boolean;
Begin
	writeln('___________________________________________________________________
|            ORGANIZADOR DE NÚMEROS CRESCENTES - v1.0             |
___________________________________________________________________
');
	writeln;
	write('Entre com o primeiro número: ');
  readln(NUM1);
  write('Entre com o segundo número: ');
  readln(NUM2);
  write('Entre com o terceiro número: ');
  readln(NUM3);
  write('___________________________________________________________________

 Em ordem');
	V := True;
  if (NUM1 < NUM2) and (NUM1 < NUM3) then
  	begin
  		ME := NUM1;
  		if (NUM2 < NUM3) then
  			begin
	  			MD := NUM2;
	  			MA := NUM3;
  			end
  		else
				begin
	  			MD := NUM3;
	  			MA := NUM2;
	  		end;
  	end;
  if (NUM2 < NUM3) and (NUM2 < NUM1) then
  	begin
  		ME := NUM2;
  		if (NUM3 < NUM1) then
  			begin
  				MD := NUM3;
  				MA := NUM1;
  			end
  		else
  			begin
  				MD := NUM1;
  				MA := NUM3;
  			end;
  	end;
  	if (NUM3 < NUM1) and (NUM3 < NUM2) then
  	begin
  		ME := NUM3;
  		if (NUM1 < NUM2) then
  			begin
  				MD := NUM1;
  				MA := NUM2;
  			end
  		else
  			begin
  				MD := NUM2;
  				MA := NUM1;
  			end;
  	end;
  if (NUM1 = NUM2) and (NUM2 = NUM3) and (NUM3 = NUM1) then
  	begin
  		ME := NUM1;
  		MD := NUM2;
  		MA := NUM3;
  		write(' ou não, estes números são todos iguais');
  		V := False;
  	end;
  if (NUM1 = NUM2) or (NUM2 = NUM3) or (NUM3 = NUM1) then
    if V then
			begin
	  		write(', com dois números iguais');
	  		if (NUM1 = NUM2) then
	  			if (NUM1 < NUM3) then 
	  				begin
	  					ME := NUM1;
	  					MD := NUM2;
	  					MA := NUM3;
	  				end;
	  		if (NUM2 = NUM3) then
	  			if (NUM2 < NUM1) then
	  				begin
	  					ME := NUM3;
	  					MD := NUM2;
	  					MA := NUM1;
	  				end;
	  		if (NUM3 = NUM1) then
	  			if (NUM3 < NUM2) then
	  				begin
	  					ME := NUM1;
	  					MD := NUM3;
	  					MA := NUM2;
	  				end;
			end; 
	writeln(': ', ME:0:2, ', ', MD:0:2, ', ', MA:0:2, '

************************* FIM DA APLICAÇÃO ************************');
  readln;
End.