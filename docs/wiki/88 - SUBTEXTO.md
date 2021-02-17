SUBTEXTO

Uma "substring" ou subtexto faz parte de um texto. Subtextos são implementadoss através um registro embutido que se parece como um texto — um subtexto tem um par de ponteiros de bytes chamado primeiro e último — o que os torna compatíveis com o texto. Se, por exemplo, isso fosse um texto:

```
16 27 H E L L O W O R L D!
```
```
primeiro último 161718192021222324252627
```

Isto poderia ser um subtexto (a parte "WORLD"):

```
22 26
```
```
primeiro último
```

Você pode usar o comando abaixo:

`COLOQUE um subtexto EM um texto.`

Para fazer com que o compilador defina o primeiro byte do subtexto e o último byte do subtexto abarquem completamente o texto. Isso permite que você consiga avançar ou retroceder dentro do texto ao adicionar algo ao primeiro byte ou removendo algum item do último byte. Você também pode usar o comando:

`POSICIONE um subtexto EM um texto.`

O que define o primeiro byte, mas não o último byte, do subtexto, deixando-o inicialmente em branco mas pronto para manipulação — ao adicionar o pultimo byte você pode "adicionar" o texto original no seu subtexto um byte por vez.

Procure por "subtexto" no código fonte para obter exemplos.

No entanto, o uso principal dos subtextos ocorre nos "percorredores", que são discutidos no neste glossário sob o tópico de mesmo nome.

