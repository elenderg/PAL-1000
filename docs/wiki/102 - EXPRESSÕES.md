EXPRESSÕES

Uma "expressão" é como uma oração subordinada em uma frase complexa. É uma frase que deve ser reduzida, separadamente, antes que a instrução que a contém possa ser totalmente compreendida. Se você, por exemplo, dizer:

```
Coloque a altura menos 1 vez a contagem em um número.
```

O compilador converte a frase `a altura menos 1 vez a contagem` para algo muito mais simples antes de pensar em colocar qualquer coisa em qualquer lugar.
O compilador considera como expressão qualquer frase com uma ou mais das seguintes palavras:

`MAIS`, `MENOS`, `VEZES`, `DIVIDIDO POR`, ou `EM SEGUIDA`.

Os quatro primeiros são operadores aritméticos padrão, mas você pode aplicá-los a outras coisas também. O último é usado principalmente para unir palavras e textos. Deixe-me explicar como o compilador simplifica expressões com alguns exemplos.

Digamos que o compilador encontre a palavra `MAIS` entre a palavra `couve` e a palavra `flor`. Ele busca por uma rotina que diga como `adicionar uma couve a uma flor`, e então usa essa rotina para reduzir a expressão. Se ele encontrar `uma couve MENOS uma flor`, ele procura uma rotina `para subtrair uma flor de uma couve`. Para calcular `um couve VEZES uma flor`, ele usa a rotina `para multiplicar uma couve por uma flor`. E para poder calcular `uma couve DIVIDIDO POR uma flor`, ele busca e usa a rotina `para dividir um couve por uma flor`.

O compilador lida com o último operador um pouco diferente, já que o objetivo neste caso é sempre `para anexar uma texto no final de outro texto`. Então, por exemplo, se o compilador encontrar a expressão `EM SEGUIDA` entre, digamos, uma palavra e um número, o compilador busca por uma rotina `para converter um número em um texto`, aplica a rotina no número e então adiciona o número convertido ao final do texto.

É claro que é possível extender essa capacidade. Mas use com moderação.

