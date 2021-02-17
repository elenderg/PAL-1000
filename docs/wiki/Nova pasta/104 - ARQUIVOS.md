ARQUIVOS

O sistema de arquivos do Windows � uma coisa de beleza insuper�vel, se igualando a uma obra de arte... Brincadeirinha. Na verdade o sistema de arquivos do Windows � uma verdadeira bagun�a. S� pra voc� ter uma id�ia:

```
Um endere�o completo � um texto. \ nome completo do arquivo = c:\pasta1\subpasta2\arquivo.exe
Um endere�o de unidade � um texto. \ letra da unidade seguido dois pontos e barra invertida. Exemplo -> c:\
Um endere�o de pasta � um endere�o completo. \ Exemplo -> c:\pasta1\pasta2\
Um nome de pasta � um texto.\ apenas o nome da pasta em si seguido da barra invertida = pasta2\ 
Um nome completo de arquivo � um texto.\ nome do arquivo ap�s a �ltima barra invertida at� o fim da extens�o. Exemplo: aquivo.exe
Uma extens�o de arquivo com ponto � um texto.\ Exemplo: .ext
Um designador � um texto.\ nome da pasta ou nome do arquivo`
```

Mesmo com tanta cofus�o, o compilador consegue:

`EXTRAIR qualquer uma dos itens acima USANDO um endere�o completo.`

Ou ainda:

`GRAVAR um endere�o completo NO SISTEMA DE ARQUIVOS.`
`SUBSTITUIR um endere�o completo POR outro endere�o completo NO SISTEMA DE ARQUIVOS.`
`EXCLUIR um endere�o completo NO SISTEMA DE ARQUIVOS.`
`CRIAR UMA C�PIA DE um endere�o completo EM outro endere�o completo NO SISTEMA DE ARQUIVOS.`

Ou, se voc� preferir:

`COLOCAR um endere�o completo DENTRO DE um texto.`
`GRAVAR um texto EM um endere�o completo.`

Se algo der errado, `o erro de entrada/sa�da` ir� conter uma descri��o do problema, adequada para exibi��o ao usu�rio. Voc� n�o precisa limpar o erro de entrada/sa�da antes de uma invocar uma dessas fun��es, mas deve verifica o erro depois de chamar a fun��o para ter certeza que ele est� em branco.

