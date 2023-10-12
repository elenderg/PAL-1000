
NPP_SAVE                                // salva o arquivo
NPE_CONSOLE local v+                    // habilita o console local
cmd /c date /t                          // pega a data atual
set DATA = $(OUTPUTL)                   // seta a variável DATA com a saída do último comando
cmd /c time /t                          // pega a hora atual
set HORA = $(OUTPUTL)                   // seta a variável HORA com a saída do último comando

// separa a data em tokens
set DIA ~ substr 0 2 $(DATA)            // dia
set MES ~ substr 3 2 $(DATA)            // mês
set ANO ~ substr 6 4 $(DATA)            // ano
set MINUTO ~ substr 3 2 $(HORA)         // minuto
set HORA ~ substr 0 2 $(HORA)           // hora

cd $(CURRENT_DIRECTORY)                                 // navega para o diretório atual

npp_console local -                                     // desabilita o console local
set local NOME_DA_PASTA = $(CURRENT_DIRECTORY)          // seta a variável NOME_DA_PASTA com o diretório atual
set local c ~ substr -1 1 $(NOME_DA_PASTA)              // remove o último caractere da variável NOME_DA_PASTA
if "$(c)" == "\" then                                   // se o último caractere for \
  set local NOME_DA_PASTA ~ substr 0 -1 $(NOME_DA_PASTA)            // remove o último caractere da variável NOME_DA_PASTA
else if "$(c)" == "/" then                              // se o último caractere for /
  set local NOME_DA_PASTA ~ substr 0 -1 $(NOME_DA_PASTA)            // remove o último caractere da variável NOME_DA_PASTA
endif
set local n1 ~ strrfind "$(NOME_DA_PASTA)" \                  // obtém a posição da última \
set local n2 ~ strrfind "$(NOME_DA_PASTA)" /                  // obtém a posição da última /
if $(n1) > $(n2) then                                   // se a posição da última \ for maior que a posição da última /
  set local n1 ~ $(n1) + 1                              // n1 + n1 + 1, para mudar a posição para o primeiro caractere do nome do diretório
  set local NOME_DA_PASTA ~ substr $(n1) - $(NOME_DA_PASTA)        // obtém o novo nome do diretório
else
  set local n2 ~ $(n2) + 1                              // n2 + n2 + 1, para mudar a posição para o primeiro caractere do nome do diretório
  set local NOME_DA_PASTA ~ substr $(n2) - $(NOME_DA_PASTA)         // obtém o novo nome do diretório
endif
npp_console local +                                     // habilita o console local

C:\compilador.exe $(CURRENT_DIRECTORY)                  // compila o projeto atual

// renomeia o arquivo para 'NOME_DA_PASTA + DATA + HORA + .exe'
cmd /c ren $(CURRENT_DIRECTORY)\$(NOME_DA_PASTA).exe COMPILADOR-$(DIA)-$(MES)-$(ANO)-$(HORA)-$(MINUTO).exe

//$(CURRENT_DIRECTORY)\$(NOME_DA_PASTA)-$(DIA)-$(MES)-$(ANO)-$(HORA)-$(MINUTO).exe // executa o arquivo
