﻿PARÂMETROS

Uma variável se torna um "parâmetro" quando ela é passada para uma rotina. Para utilizar os parâmetros em uma rotina, você precisa informar a quantidade e os tipos de parâmetros no cabeçalho da rotina. Eis alguns cabeçalhos de rotina de amostra:

```
Para adicionar um número a outro número:
Para decidir se uma localização está dentro de alguns polígonos:
Para colocar o centro de uma elipse em uma localização:
```
A primeira rotina é um procedimento que espera dois parâmetros: `um número` e `outro número`. O primeiro é um parâmetro entrada; o segundo também é um parâmetro de entrada mas será devolvido na saída da rotina.

A segunda rotina é apenas um decisor comum. Ela também espera dois parâmetros, `uma localização` e `alguns polígonos`. Ambos os parâmetros são somente de entrada.

A terceira rotina é uma função com dois parâmetros: `uma elipse` e `uma localização`.
A elipse é o parâmetro de entrada e a localização é o parâmetro de saída.

As definições de parâmetros são fáceis de identificar porque sempre começam com um
artigo indefinido (`UM`, `UMA`, `UNS`, `UMAS` ou `ALGUM`, `ALGUMA`, `ALGUNS`, `ALGUMAS`) seguido por um substantivo. Você pode ler mais sobre nomes sob o tópico `Nomes`.

Observe que quando parâmetros são passados para rotinas, o compilador passa o parâmetro original, e não cópias. É por isso que você pode usá-las na entradas, saída ou nos dois. Às vezes, no entanto, você queira manipular o valor de um parâmetro sem afetar a variavel original. Neste caso, você pode utilizar o seguinte comando:

```
PRIVATIZE um parâmetro.
```

E o compilador fará uma cópia do parâmetro para você. Conforme explicado anteriormente, você continuará utilizando o mesmo nome do parâmetro, já que a variável original será renomeada apenas temporariamente. A variável original receberá o sufixo `original` no nome dela, para que você ainda possa acessá-la se precisar.

