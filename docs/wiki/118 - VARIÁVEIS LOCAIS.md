﻿VARIÁVEIS LOCAIS

Uma "variável local" é uma variável que é propriedade privada de uma rotina. Variáveis locais não podem ser vistas ou modificadas por qualquer outra rotina. A menos que, claro, você as passe para outras rotinas como parâmetros.

O compilador cria uma nova cópia de cada variável local, a cada vez que uma rotina é chamada. A variável é inicializada com o valor 0. O que significa que uma rotina pode chamar a si mesa e tudo ainda vai funcionar. Isto é chamado de "recursão", e se você não sabe o que isso significa, não precisa disso. O compilador se lira das variáveis locais à medida que cada rotina é completada, para que elas não ocupem memória à toa.

Você cria uma nova variável local em uma rotina sempre que usa um artigo indefinido (`A`, `AN`, `ANOTHER` ou `SOME`) em um comando. Por exemplo:

`Coloque a localização do mouse em outra localização.`
`Coloque a coordenada esquerda da tela em uma coordenada esquerda da caixa.`
`Coloque 101 em outro número de curso.`

No primeiro exemplo, a frase `uma localização` faz com que eu faça uma nova variável local chamada "a localização". Em seguida, o compilador põe a localização atual do mouse na variável.

O segundo exemplo coloca a coordenada esquerda da tela em uma nova coordenada esquerda da caixa. O restante das coordenadas da caixa — superior, direita e inferior — estão definidas como zero.

O terceiro exemplo coloca um literal 101 em uma nova variável local do tipo número.
Esta variável é definida com adjetivos anteriores ao nome do tipo, então ela pode ser referenciada pelo seu nome completo, `O outro número de curso`, ou por apelido, `o outro curso`. Você pode ler mais sobre nomes sob o tópico `Nomes`.

Consulte também a página `Laços`, onde uma variável local e um decisor nos permite fazer `laços contados` sem adicionar novas palavras-chave ao compilador.

