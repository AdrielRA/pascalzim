Program tb002_categorias;
uses crt;
var P, VA, VI, NP : real;
    C             : integer;
    S             : char;
Begin
	writeln;
	textcolor(10);
	writeln('___________________________________________');
	textcolor(14);
	writeln(' CALCULANDO PRE�OS - PRODUTOS REFRIGERADOS ');
	textcolor(10);
	writeln('___________________________________________');
	writeln;
	textcolor(15);
	write('Entre com o pre�o: R$');
	textcolor(10);
  readln(P);
  writeln;
  writeln('___________________________________________');
  textcolor(15);
	writeln('Escolha a categoria:');
	writeln;
	writeln('[ 1 ] Limpeza'); 
	writeln('[ 2 ] Alimenta��o');
	writeln('[ 3 ] Vestu�rio');
	writeln;
	write('Sua op��o: ');
	textcolor(10);
  readln(C);
  writeln;
  writeln('___________________________________________');
  textcolor(15);
	writeln('Necessita de refrigera��o?');
	writeln;
	writeln('[ R ] Precisa de Refrigera��o');
	writeln('[ N ] N�o Precisa de Refrigera��o');
	writeln;
	write('Sua op��o: ');
	textcolor(10);
  readln(S);
  writeln;
  writeln('___________________________________________');
    if (P <= 25) then
       begin
          if (C = 1) then
            VA := P * 0.05
           else if (C = 2) then
                VA := P * 0.08
          			else 
                  VA := P * 0.1;			     
        end
		 else if (P > 25) then
		    begin
		      if (C = 1) then
		        VA := P * 0.12
		       else if (C = 2) then
		            VA := P * 0.15
		            else 
		              VA := P * 0.18;			     
		    end; 
			NP := P + VA;
			  if (C = 2) or (S = 'R') or (S = 'r') then
					VI := NP * 0.05
				else 
				  VI := NP * 0.08;
	writeln;
	textcolor(15);
	writeln(' O novo pre�o ser�: R$', NP:0:2);
	writeln(' O valor do imposto:R$', VI:0:2);
	textcolor(10);
	writeln('___________________________________________');
  readln;						 	      
End.