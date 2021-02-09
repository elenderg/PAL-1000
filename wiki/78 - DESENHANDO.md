﻿DESENHANDO

Você pode dizer ao compilador coisas como:

```
DESENHE uma coisa.
DESENHE uma coisa USANDO uma cor.
DESENHE uma coisa USANDO uma cor na borda E uma cor no preenchimento.
DESENHE uma coisa DENTRO DE uma caixa USANDO uma fonte E uma cor.
DESENHE uma coisa NO CENTRO DE uma caixa USANDO uma determinada fonte E uma cor.
```

E o compilador irá renderizar tudo numa "tela virtual", ou seja, uma tela invisível do mesmo tamanho e formato que a tela do monitor. Dessa forma, quando você utilizar o comando:

```
ATUALIZE A TELA.
```

O compilador irá substituir o conteudo da tela pelo conteúdo da tela virtual em um piscar de olhos. Na verdade, mais rápido que isso. Quer dizer, às vezes não. Se você usar o comando:

```
ATUALIZA A TELA USANDO [o conteúdo de] uma caixa.
```

O compliador vai transferir apenas os pixels que estiverem dentro da caixa.

As regras para impressão funcionam de forma diferente. Nesse caso, o compilador usa "a tela da impressora" e envia os desenhos para um dispositivo de impressão assim que você finaliza página. Consulte a seção "Imprimindo" para mais detalhes.

Para ajustar suas coordenadas, você pode:

`DEFINIR uma coordenada COMO ORIGEM DO DESENHO.`

Você também pode evitar o desenho em certas áreas da tela usando o recurso de "fita crepe". Consulte o tópico "Fita Crepe" para descobrir como fazer isso.

