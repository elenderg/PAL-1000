PERCORREDORES

Um "percorredor" � um registro usado para analisar texto. Para entend�-lo, voc� deve estar confort�vel com o modo de funcionamento do tipo texto (strings) e subtextos (substrings). Se voc� n�o estiver familiarizado com estes termos, procure-os neste gloss�rio e analise as manipula��es de texto que fizemos no nosso programa de exemplo.

Eis a defini��o de "percorredor":

```
Um percorredor possui
um subtexto original,
uma subtexto fonte e
uma caractere de subtexto.
```
Eis o que acontece quando o comando abaixo � invocado:

```
COLOQUE um percorredor em um texto.
```

O compilador define o `subtexto original` e o `subtexto fonte` de forma que eles possam abranger todo o texto. Ent�o ele posiciona o `caractere de subtexto` no `subtexto fonte` � o que faz com que o subtexto fonte comece com valorem branco, mas pronto para receber um novo valor. Depois de colocar um percorredor no texto, voc� pode usar o seguinte comando:

```
AVANCE um percorredor.
```

O compilador adiciona um no `primeiro byte do subtexto fonte` e mais um no `�ltimo byte do subtexto fonte`. Isso faz com que o `subtexto fonte` fique mais curto enquanto que o `caractere de subtexto` fica mais longo, permitindo que voc� processe o texto um byte de cada vez. Quando voc� quiser limpar o `caractere de subtexto` antigo e come�ar um novo, voc� s� precisa utilizar o comando:

```
POSICIONE o caractere de subtexto do percorredor no subtexto fonte do percorredor.
```
Voc� tamb�m pode escrever suas pr�prias rotinas para MOVER um percorredor mais de um byte por vez, assim como acontece nas rotinas de "verifica��o ortogr�fica" e de "quebra de linha", sem mencionar as rotinas de an�lise de c�digo-fonte. Pesquise `para mover um percorredor` para encontrar os exemplos.

