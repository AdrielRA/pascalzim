Program Pzim ;
var OP    : char;
Begin
  while True do
  	begin
  		write(' Sua opção: ');
  		OP := readkey;
  		if (ord(OP) = 13) then
  			begin
  				gotoxy(12,1);
  				write('                       ');
  				gotoxy(1,1);
  			end
  		else break;	
		end;
	writeln;
	write(' Tecla digitada: ',OP);
	readln;
End.