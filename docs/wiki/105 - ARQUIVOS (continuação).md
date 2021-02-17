ARQUIVOS (continuação)

Se você precisar acessar uma ou mais pastas do sistema de arquivos, você pode usar um comando como esse:

```
Para percorrer todos os itens em um endereço completo:
Obtenha um item do do endereço completo.
Se o item não for encontrado, sair.
[faça algo com o item]
Repita.
```
```
seu programa
```

O termo "Item" é definido da seguinte forma no compilador:

```
Um item tem
uma categoria,
um endereço completo, um endereço de pasta, um designador, uma extensão,
um tamanho,
um win32finddata e um número identificador.
```

O campo `categoria` é uma variável do tipo `texto`. O conteúdo dessa variável pode ser `pasta` ou `arquivo` para cada item encontrado. Os campos `extensão` e `tamanho` serão preenchidos apenas se a categoria for `arquivo`.
Os campos `win32finddata` e `número identificador` são necessários que o compilador funcione no Windows. Você também pode usar os seguintes comandos:

```
OBTENHA uma contagem de ITENS EM um endereço completo no SISTEMA DE ARQUIVOS.
OBTENHA um tamanho USANDO um endereço completo no SISTEMA DE ARQUIVOS.
```

Note que os contadores e tamanhos de arquivo, incluindo o `tamanho` no registro de nome `Item`, são limitados a 2147483647, que é o maior número permitido pelo compilador no momento.

