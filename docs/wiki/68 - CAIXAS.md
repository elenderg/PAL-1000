﻿CAIXAS

Um dos aspectos chave do compilador é a forma que ele trabalha com caixas. Uma caixa é uma variável do tipo *record*. O código da caixa é basicamente assim:

```
Um lado é uma coordenada.

Uma caixa tem
Um lado esquerdo, 
Um lado de cima, 
Um lado direito, 
Um lado de baixo,
Um canto no canto superior esquerdo e
Um segundo canto no canto inferior direito.
```

Esta é uma imagem de uma caixa, com todas as partes acima identificadas. Note que estou usando os apelidos dos campos aqui, como você provavelmente usará em seus programas.

```
DIREITA ESQUERDA

CIMA

BAIXO

SUPERIOR ESQUERDO

INFERIOR DIREITO
```

O compilador consegue fazer caixas a partir de especificações de largura e altura, ou apenas usando um par de pontos de coordenadas. Tudo o que você tem que fazer é escrever algo assim:

```
FAÇA uma caixa COM tal largura E tal altura.
FAÇA uma caixa COM essa coordenada E essa outra coordenada.
FAÇA uma caixa USANDO esse lado esquerdo E essa parte de cima E esse lado direito E essa parte de baixo.
```
O compilador consegue criar uma caixa. Bem como obter a largura, altura o ponto central entre outras coisas. Ele também consegue dizer se uma caixa ESTÁ DENTRO ou se ela ESTÁ TOCANDO outra caixa. E se um ponto está DENTRO, FORA ou na BORDA da caixa. Sem mencionar todas as outras "Transformações Gráficas" as quais você pode saber mais em outra parte mais abaixo neste glossário.

