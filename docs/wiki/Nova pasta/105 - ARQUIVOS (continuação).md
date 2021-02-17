ARQUIVOS (continua��o)

Se voc� precisar acessar uma ou mais pastas do sistema de arquivos, voc� pode usar um comando como esse:

```
Para percorrer todos os itens em um endere�o completo:
Obtenha um item do do endere�o completo.
Se o item n�o for encontrado, sair.
[fa�a algo com o item]
Repita.
```
```
seu programa
```

O termo "Item" � definido da seguinte forma no compilador:

```
Um item tem
uma categoria,
um endere�o completo, um endere�o de pasta, um designador, uma extens�o,
um tamanho,
um win32finddata e um n�mero identificador.
```

O campo `categoria` � uma vari�vel do tipo `texto`. O conte�do dessa vari�vel pode ser `pasta` ou `arquivo` para cada item encontrado. Os campos `extens�o` e `tamanho` ser�o preenchidos apenas se a categoria for `arquivo`.
Os campos `win32finddata` e `n�mero identificador` s�o necess�rios que o compilador funcione no Windows. Voc� tamb�m pode usar os seguintes comandos:

```
OBTENHA uma contagem de ITENS EM um endere�o completo no SISTEMA DE ARQUIVOS.
OBTENHA um tamanho USANDO um endere�o completo no SISTEMA DE ARQUIVOS.
```

Note que os contadores e tamanhos de arquivo, incluindo o `tamanho` no registro de nome `Item`, s�o limitados a 2147483647, que � o maior n�mero permitido pelo compilador no momento.

