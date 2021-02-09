PERCORREDORES

Um "percorredor" é um registro usado para analisar texto. Para entendê-lo, você deve estar confortável com o modo de funcionamento do tipo texto (strings) e subtextos (substrings). Se você não estiver familiarizado com estes termos, procure-os neste glossário e analise as manipulações de texto que fizemos no nosso programa de exemplo.

Eis a definição de "percorredor":

```
Um percorredor possui
um subtexto original,
uma subtexto fonte e
uma caractere de subtexto.
```
Eis o que acontece quando o comando abaixo é invocado:

```
COLOQUE um percorredor em um texto.
```

O compilador define o `subtexto original` e o `subtexto fonte` de forma que eles possam abranger todo o texto. Então ele posiciona o `caractere de subtexto` no `subtexto fonte` — o que faz com que o subtexto fonte comece com valorem branco, mas pronto para receber um novo valor. Depois de colocar um percorredor no texto, você pode usar o seguinte comando:

```
AVANCE um percorredor.
```

O compilador adiciona um no `primeiro byte do subtexto fonte` e mais um no `último byte do subtexto fonte`. Isso faz com que o `subtexto fonte` fique mais curto enquanto que o `caractere de subtexto` fica mais longo, permitindo que você processe o texto um byte de cada vez. Quando você quiser limpar o `caractere de subtexto` antigo e começar um novo, você só precisa utilizar o comando:

```
POSICIONE o caractere de subtexto do percorredor no subtexto fonte do percorredor.
```
Você também pode escrever suas próprias rotinas para MOVER um percorredor mais de um byte por vez, assim como acontece nas rotinas de "verificação ortográfica" e de "quebra de linha", sem mencionar as rotinas de análise de código-fonte. Pesquise `para mover um percorredor` para encontrar os exemplos.

