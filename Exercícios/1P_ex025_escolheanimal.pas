program P_ex025_escolheanimal;
var ANIMAL : String;
    OP : Char;
begin
  WriteLn('_____________________________________');
  WriteLn('          ESCOLHA DE ANIMAL          ');
  WriteLn('_____________________________________');
  WriteLn;
  WriteLn('Use sempre [S] Sim [N] Não');
  WriteLn;
  Write('É um mamifero? ');
  ReadLn(OP);
  case OP of
    'S', 's':
      begin
        Write('É quadrúpede? ');
        ReadLn(OP);
        case OP of
          'S', 's':
            begin
              Write('É carnívoro? ');
              ReadLn(OP);
              case OP of
                'S', 's':
                  begin
                    ANIMAL := 'o Leão';
                  end;
                'N', 'n':
                  begin
                    Write('É fofinho?');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Unicórnio';
                        end;
                      'N', 'n':
                        begin
                          ANIMAL := 'o Cavalo';
                        end;
                    end;
                  end;
                end;
            end;
          'N', 'n':
            begin
              Write('É bípede? ');
              ReadLn(OP);
              case OP of
                'S', 's':
                  begin
                    Write('É onívoro? ');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Homem';
                        end;
                      'N','n':
                        begin
                          ANIMAL := 'o Macaco';
                        end;
                      end;
                  end;
                'N', 'n':
                  begin
                    Write('É voador? ');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Morcego';
                        end;
                      'N', 'n':
                        begin
                          ANIMAL := 'a Baleia';
                        end;
                      end;
                  end;  
                end;
            end;
        end;
      end;
    'N', 'n':
      begin
        Write('É uma ave? ');
        ReadLn(OP);
        case OP of
          'S', 's':
            begin
              Write('Não-voadora? ');
              ReadLn(OP);
              case OP of
                'S', 's':
                  begin
                    Write('É tropical? ');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Avestruz';
                        end;
                      'N', 'n':
                        begin
                          ANIMAL := 'o Pinguim';
                        end;
                      end;
                  end;
                'N', 'n':
                  begin
                    Write('É nadadora? ');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Pato';
                        end;
                      'N', 'n':
                        begin
                          ANIMAL := 'a Águia'
                        end;
                    end;
                  end;
                end;
            end;
          'N', 'n':
            begin
              Write('É um réptil? ');
              ReadLn(OP);
              case OP of
                'S', 's':
                  begin
                    Write('Com casco? ');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'a Tartaruga';
                        end;
                      'N', 'n':
                        begin
                          Write('É carnívoro? ');
                          ReadLn(OP);
                          case OP of
                            'S', 's':
                              begin
                                Write('Foi extinto? ');
                                ReadLn(OP);
                                case OP of
                                  'S', 's':
                                    begin
                                      ANIMAL := 'o Dinossauro';
                                    end;
                                  'N', 'n':
                                    begin
                                      ANIMAL := 'o Crocodilo';
                                    end;
                                end;
                              end;
                            'N', 'n':
                              begin
                                ANIMAL := 'a Cobra';
                              end;
                          end;
                        end;
                      end;
                  end;
                'N', 'n':
                  begin
                    Write('É um ET? ');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Avatar';
                        end;
                      'N', 'n':
                        begin
                          ANIMAL := 'o Inexistente';
                        end;
                    end;
                  end;
                end;
            end;
          end;
      end;
  end;
  WriteLn;
  WriteLn('_____________________________________');
  WriteLn;
  WriteLn('O animal escolhido foi ', ANIMAL, '!');
  WriteLn('_____________________________________');
  readln;
end.
