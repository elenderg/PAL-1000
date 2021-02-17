EXPRESS�ES

Uma "express�o" � como uma ora��o subordinada em uma frase complexa. � uma frase que deve ser reduzida, separadamente, antes que a instru��o que a cont�m possa ser totalmente compreendida. Se voc�, por exemplo, dizer:

```
Coloque a altura menos 1 vez a contagem em um n�mero.
```

O compilador converte a frase `a altura menos 1 vez a contagem` para algo muito mais simples antes de pensar em colocar qualquer coisa em qualquer lugar.
O compilador considera como express�o qualquer frase com uma ou mais das seguintes palavras:

`MAIS`, `MENOS`, `VEZES`, `DIVIDIDO POR`, ou `EM SEGUIDA`.

Os quatro primeiros s�o operadores aritm�ticos padr�o, mas voc� pode aplic�-los a outras coisas tamb�m. O �ltimo � usado principalmente para unir palavras e textos. Deixe-me explicar como o compilador simplifica express�es com alguns exemplos.

Digamos que o compilador encontre a palavra `MAIS` entre a palavra `couve` e a palavra `flor`. Ele busca por uma rotina que diga como `adicionar uma couve a uma flor`, e ent�o usa essa rotina para reduzir a express�o. Se ele encontrar `uma couve MENOS uma flor`, ele procura uma rotina `para subtrair uma flor de uma couve`. Para calcular `um couve VEZES uma flor`, ele usa a rotina `para multiplicar uma couve por uma flor`. E para poder calcular `uma couve DIVIDIDO POR uma flor`, ele busca e usa a rotina `para dividir um couve por uma flor`.

O compilador lida com o �ltimo operador um pouco diferente, j� que o objetivo neste caso � sempre `para anexar uma texto no final de outro texto`. Ent�o, por exemplo, se o compilador encontrar a express�o `EM SEGUIDA` entre, digamos, uma palavra e um n�mero, o compilador busca por uma rotina `para converter um n�mero em um texto`, aplica a rotina no n�mero e ent�o adiciona o n�mero convertido ao final do texto.

� claro que � poss�vel extender essa capacidade. Mas use com modera��o.

