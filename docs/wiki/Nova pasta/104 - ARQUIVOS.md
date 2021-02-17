ARQUIVOS

O sistema de arquivos do Windows é uma coisa de beleza insuperável, se igualando a uma obra de arte... Brincadeirinha. Na verdade o sistema de arquivos do Windows é uma verdadeira bagunça. Só pra você ter uma idéia:

```
Um endereço completo é um texto. \ nome completo do arquivo = c:\pasta1\subpasta2\arquivo.exe
Um endereço de unidade é um texto. \ letra da unidade seguido dois pontos e barra invertida. Exemplo -> c:\
Um endereço de pasta é um endereço completo. \ Exemplo -> c:\pasta1\pasta2\
Um nome de pasta é um texto.\ apenas o nome da pasta em si seguido da barra invertida = pasta2\ 
Um nome completo de arquivo é um texto.\ nome do arquivo após a última barra invertida até o fim da extensão. Exemplo: aquivo.exe
Uma extensão de arquivo com ponto é um texto.\ Exemplo: .ext
Um designador é um texto.\ nome da pasta ou nome do arquivo`
```

Mesmo com tanta cofusão, o compilador consegue:

`EXTRAIR qualquer uma dos itens acima USANDO um endereço completo.`

Ou ainda:

`GRAVAR um endereço completo NO SISTEMA DE ARQUIVOS.`
`SUBSTITUIR um endereço completo POR outro endereço completo NO SISTEMA DE ARQUIVOS.`
`EXCLUIR um endereço completo NO SISTEMA DE ARQUIVOS.`
`CRIAR UMA CÓPIA DE um endereço completo EM outro endereço completo NO SISTEMA DE ARQUIVOS.`

Ou, se você preferir:

`COLOCAR um endereço completo DENTRO DE um texto.`
`GRAVAR um texto EM um endereço completo.`

Se algo der errado, `o erro de entrada/saída` irá conter uma descrição do problema, adequada para exibição ao usuário. Você não precisa limpar o erro de entrada/saída antes de uma invocar uma dessas funções, mas deve verifica o erro depois de chamar a função para ter certeza que ele está em branco.

