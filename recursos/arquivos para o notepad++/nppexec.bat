
NPP_SAVE                                // salva o arquivo
NPE_CONSOLE local v+                    // habilita o console local
cmd /c date /t                          // pega a data atual
set DATA = $(OUTPUTL)                   // seta a vari�vel DATA com a sa�da do �ltimo comando
cmd /c time /t                          // pega a hora atual
set HORA = $(OUTPUTL)                   // seta a vari�vel HORA com a sa�da do �ltimo comando

// separa a data em tokens
set DIA ~ substr 0 2 $(DATA)            // dia
set MES ~ substr 3 2 $(DATA)            // m�s
set ANO ~ substr 6 4 $(DATA)            // ano
set MINUTO ~ substr 3 2 $(HORA)         // minuto
set HORA ~ substr 0 2 $(HORA)           // hora

cd $(CURRENT_DIRECTORY)                                 // navega para o diret�rio atual

npp_console local -                                     // desabilita o console local
set local NOME_DA_PASTA = $(CURRENT_DIRECTORY)          // seta a vari�vel NOME_DA_PASTA com o diret�rio atual
set local c ~ substr -1 1 $(NOME_DA_PASTA)              // remove o �ltimo caractere da vari�vel NOME_DA_PASTA
if "$(c)" == "\" then                                   // se o �ltimo caractere for \
  set local NOME_DA_PASTA ~ substr 0 -1 $(NOME_DA_PASTA)            // remove o �ltimo caractere da vari�vel NOME_DA_PASTA
else if "$(c)" == "/" then                              // se o �ltimo caractere for /
  set local NOME_DA_PASTA ~ substr 0 -1 $(NOME_DA_PASTA)            // remove o �ltimo caractere da vari�vel NOME_DA_PASTA
endif
set local n1 ~ strrfind "$(NOME_DA_PASTA)" \                  // obt�m a posi��o da �ltima \
set local n2 ~ strrfind "$(NOME_DA_PASTA)" /                  // obt�m a posi��o da �ltima /
if $(n1) > $(n2) then                                   // se a posi��o da �ltima \ for maior que a posi��o da �ltima /
  set local n1 ~ $(n1) + 1                              // n1 + n1 + 1, para mudar a posi��o para o primeiro caractere do nome do diret�rio
  set local NOME_DA_PASTA ~ substr $(n1) - $(NOME_DA_PASTA)        // obt�m o novo nome do diret�rio
else
  set local n2 ~ $(n2) + 1                              // n2 + n2 + 1, para mudar a posi��o para o primeiro caractere do nome do diret�rio
  set local NOME_DA_PASTA ~ substr $(n2) - $(NOME_DA_PASTA)         // obt�m o novo nome do diret�rio
endif
npp_console local +                                     // habilita o console local

C:\compilador.exe $(CURRENT_DIRECTORY)                  // compila o projeto atual

// renomeia o arquivo para 'NOME_DA_PASTA + DATA + HORA + .exe'
cmd /c ren $(CURRENT_DIRECTORY)\$(NOME_DA_PASTA).exe COMPILADOR-$(DIA)-$(MES)-$(ANO)-$(HORA)-$(MINUTO).exe

//$(CURRENT_DIRECTORY)\$(NOME_DA_PASTA)-$(DIA)-$(MES)-$(ANO)-$(HORA)-$(MINUTO).exe // executa o arquivo
