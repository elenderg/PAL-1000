DESENHANDO

Voc� pode dizer ao compilador coisas como:

```
DESENHE uma coisa.
DESENHE uma coisa USANDO uma cor.
DESENHE uma coisa USANDO uma cor na borda E uma cor no preenchimento.
DESENHE uma coisa DENTRO DE uma caixa USANDO uma fonte E uma cor.
DESENHE uma coisa NO CENTRO DE uma caixa USANDO uma determinada fonte E uma cor.
```

E o compilador ir� renderizar tudo numa "tela virtual", ou seja, uma tela invis�vel do mesmo tamanho e formato que a tela do monitor. Dessa forma, quando voc� utilizar o comando:

```
ATUALIZE A TELA.
```

O compilador ir� substituir o conteudo da tela pelo conte�do da tela virtual em um piscar de olhos. Na verdade, mais r�pido que isso. Quer dizer, �s vezes n�o. Se voc� usar o comando:

```
ATUALIZA A TELA USANDO [o conte�do de] uma caixa.
```

O compliador vai transferir apenas os pixels que estiverem dentro da caixa.

As regras para impress�o funcionam de forma diferente. Nesse caso, o compilador usa "a tela da impressora" e envia os desenhos para um dispositivo de impress�o assim que voc� finaliza p�gina. Consulte a se��o "Imprimindo" para mais detalhes.

Para ajustar suas coordenadas, voc� pode:

`DEFINIR uma coordenada COMO ORIGEM DO DESENHO.`

Voc� tamb�m pode evitar o desenho em certas �reas da tela usando o recurso de "fita crepe". Consulte o t�pico "Fita Crepe" para descobrir como fazer isso.

