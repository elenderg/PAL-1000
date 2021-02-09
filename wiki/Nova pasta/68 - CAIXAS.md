CAIXAS

Um dos aspectos chave do compilador � a forma que ele trabalha com caixas. Uma caixa � uma vari�vel do tipo *record*. O c�digo da caixa � basicamente assim:

```
Um lado � uma coordenada.

Uma caixa tem
Um lado esquerdo, 
Um lado de cima, 
Um lado direito, 
Um lado de baixo,
Um canto no canto superior esquerdo e
Um segundo canto no canto inferior direito.
```

Esta � uma imagem de uma caixa, com todas as partes acima identificadas. Note que estou usando os apelidos dos campos aqui, como voc� provavelmente usar� em seus programas.

```
DIREITA ESQUERDA

CIMA

BAIXO

SUPERIOR ESQUERDO

INFERIOR DIREITO
```

O compilador consegue fazer caixas a partir de especifica��es de largura e altura, ou apenas usando um par de pontos de coordenadas. Tudo o que voc� tem que fazer � escrever algo assim:

```
FA�A uma caixa COM tal largura E tal altura.
FA�A uma caixa COM essa coordenada E essa outra coordenada.
FA�A uma caixa USANDO esse lado esquerdo E essa parte de cima E esse lado direito E essa parte de baixo.
```
O compilador consegue criar uma caixa. Bem como obter a largura, altura o ponto central entre outras coisas. Ele tamb�m consegue dizer se uma caixa EST� DENTRO ou se ela EST� TOCANDO outra caixa. E se um ponto est� DENTRO, FORA ou na BORDA da caixa. Sem mencionar todas as outras "Transforma��es Gr�ficas" as quais voc� pode saber mais em outra parte mais abaixo neste gloss�rio.

