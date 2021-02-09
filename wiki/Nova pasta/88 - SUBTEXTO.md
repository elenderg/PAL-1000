SUBTEXTO

Uma "substring" ou subtexto faz parte de um texto. Subtextos s�o implementadoss atrav�s um registro embutido que se parece como um texto � um subtexto tem um par de ponteiros de bytes chamado primeiro e �ltimo � o que os torna compat�veis com o texto. Se, por exemplo, isso fosse um texto:

```
16 27 H E L L O W O R L D!
```
```
primeiro �ltimo 161718192021222324252627
```

Isto poderia ser um subtexto (a parte "WORLD"):

```
22 26
```
```
primeiro �ltimo
```

Voc� pode usar o comando abaixo:

`COLOQUE um subtexto EM um texto.`

Para fazer com que o compilador defina o primeiro byte do subtexto e o �ltimo byte do subtexto abarquem completamente o texto. Isso permite que voc� consiga avan�ar ou retroceder dentro do texto ao adicionar algo ao primeiro byte ou removendo algum item do �ltimo byte. Voc� tamb�m pode usar o comando:

`POSICIONE um subtexto EM um texto.`

O que define o primeiro byte, mas n�o o �ltimo byte, do subtexto, deixando-o inicialmente em branco mas pronto para manipula��o � ao adicionar o pultimo byte voc� pode "adicionar" o texto original no seu subtexto um byte por vez.

Procure por "subtexto" no c�digo fonte para obter exemplos.

No entanto, o uso principal dos subtextos ocorre nos "percorredores", que s�o discutidos no neste gloss�rio sob o t�pico de mesmo nome.

