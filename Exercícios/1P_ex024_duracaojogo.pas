Program ex024_duracaojogo;
var HI, MI, HF, MF, HT, MT, R, T : integer;
  OPU : char;
		OP : boolean;
Begin
  OP := True;
  while OP do
    begin
      writeln;
      writeln('_________________________________________');
      writeln('          DURAÇÃO DO JOGO - v1.0         ');
      writeln('_________________________________________');
      writeln;
      write(' Que horas começa a partida? ');
      readln(HI);
      while HI >= 24 do
        begin
          writeln;
          write(' Hora deve ser menor que 24: ');
          readln(HI);
        end;
      writeln;
      writeln(' E quantos minutos? ');
      writeln;
      write(' ', HI, ':');
      readln(MI);
      while MI >= 60 do
        begin
          writeln;
          writeln(' Minutos devem ser menor que 60. ');
          writeln;
          write(' ', HI, ':');
          readln(MI);
        end;
      writeln('_________________________________________');
      writeln;
      write(' Que horas termina a partida? ');
      readln(HF);
      while HF >= 24 do
        begin
          writeln;
          write(' Hora deve ser menor que 24: ');
          readln(HF);
        end;
      writeln;
      writeln(' E quantos minutos? ');
      writeln;
      write(' ', HF, ':');
      readln(MF);
      while MF >= 60 do
        begin
          writeln;
          writeln(' Minutos devem ser menor que 60. ');
          writeln;
          write(' ', HF, ':');
          readln(MF);
        end;
      writeln('_________________________________________');
      writeln;
      if (HF = HI) and (MF = MI) then
        writeln(' Horários idênticos!')
      else
        begin
          if HF < HI then
            HF := HF + 24;
          if MF < MI then
            begin
              MF := MF + 60;
              HT := -1;
            end;
            MT := MF - MI;
            HT := HT + HF - HI;
            if HT < 24 then
              begin
                writeln(' Sua partida tem duração de: ', HT, 'h', MT, 'min.');
              end
            else
              writeln('Sua partida não pode durar mais que 24h!');
        end;
      writeln('_________________________________________');
      R := 0;
      while (R <= 300000) do
        R := R + 1;
      writeln;
      writeln(' Deseja reiniciar?');
      writeln(' [ S ] Sim');
      writeln(' [ N ] Não');
      writeln;
      write(' Sua opção: ');
      readln(OPU);
      case OPU of
        'S', 's':
          OP := true;
        'N', 'n':
          begin
            OP := false;
              writeln;
              write(' Saindo');
              R := 0;
              while (R <= 33) do
                begin
                  T := 0;
                  while (T <= 8000) do
                    begin
                      T := T + 1;
                    end;
                  write('.');
                  R := R + 1;
                end;
            writeln;
            writeln;
            writeln('_________________________________________');
            writeln('  FIM  FIM  FIM  FIM  FIM  FIM  FIM  FIM ');
          end
        else
          begin
            writeln;
            writeln('OpÃ§Ã£o invÃ¡lida! Vamos reiniciar...');
            writeln;
            R := 0;
            while (R <= 300000) do
              R := R + 1;
            OP := true;
          end;
      end;
    end;
  readln;  
End.
