program P_ex025_escolheanimal;
var ANIMAL : String;
    OP : Char;
begin
  WriteLn('_____________________________________');
  WriteLn('          ESCOLHA DE ANIMAL          ');
  WriteLn('_____________________________________');
  WriteLn;
  WriteLn('Use sempre [S] Sim [N] N�o');
  WriteLn;
  Write('� um mamifero? ');
  ReadLn(OP);
  case OP of
    'S', 's':
      begin
        Write('� quadr�pede? ');
        ReadLn(OP);
        case OP of
          'S', 's':
            begin
              Write('� carn�voro? ');
              ReadLn(OP);
              case OP of
                'S', 's':
                  begin
                    ANIMAL := 'o Le�o';
                  end;
                'N', 'n':
                  begin
                    Write('� fofinho?');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Unic�rnio';
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
              Write('� b�pede? ');
              ReadLn(OP);
              case OP of
                'S', 's':
                  begin
                    Write('� on�voro? ');
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
                    Write('� voador? ');
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
        Write('� uma ave? ');
        ReadLn(OP);
        case OP of
          'S', 's':
            begin
              Write('N�o-voadora? ');
              ReadLn(OP);
              case OP of
                'S', 's':
                  begin
                    Write('� tropical? ');
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
                    Write('� nadadora? ');
                    ReadLn(OP);
                    case OP of
                      'S', 's':
                        begin
                          ANIMAL := 'o Pato';
                        end;
                      'N', 'n':
                        begin
                          ANIMAL := 'a �guia'
                        end;
                    end;
                  end;
                end;
            end;
          'N', 'n':
            begin
              Write('� um r�ptil? ');
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
                          Write('� carn�voro? ');
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
                    Write('� um ET? ');
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
