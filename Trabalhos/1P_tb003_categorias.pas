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
	writeln(' CALCULANDO PREÇOS - PRODUTOS REFRIGERADOS ');
	textcolor(10);
	writeln('___________________________________________');
	writeln;
	textcolor(15);
	write('Entre com o preço: R$');
	textcolor(10);
  readln(P);
  writeln;
  writeln('___________________________________________');
  textcolor(15);
	writeln('Escolha a categoria:');
	writeln;
	writeln('[ 1 ] Limpeza'); 
	writeln('[ 2 ] Alimentação');
	writeln('[ 3 ] Vestuário');
	writeln;
	write('Sua opção: ');
	textcolor(10);
  readln(C);
  writeln;
  writeln('___________________________________________');
  textcolor(15);
	writeln('Necessita de refrigeração?');
	writeln;
	writeln('[ R ] Precisa de Refrigeração');
	writeln('[ N ] Não Precisa de Refrigeração');
	writeln;
	write('Sua opção: ');
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
	writeln(' O novo preço será: R$', NP:0:2);
	writeln(' O valor do imposto:R$', VI:0:2);
	textcolor(10);
	writeln('___________________________________________');
  readln;						 	      
End.