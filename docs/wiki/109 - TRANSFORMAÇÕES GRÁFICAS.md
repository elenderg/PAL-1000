TRANSFORMAÇÕES GRÁFICAS

O compilador possui uma série de rotinas para manipulação gráfica. Os objetos gráficos podem ser manipulados de diversas formas. Por exemplo, você pode usar os comandos:

```
MOVA alguma coisa PARA CIMA tantos pixels. 
MOVA alguma coisa PARA BAIXO tantos pixels. 
MOVA alguma coisa PARA A ESQUERDA tantos pixels.
MOVA alguma coisa PARA A DIREITA tantos pixels.
MOVA alguma coisa USANDO um valor x E um valor y.
MOVA algo PARA um ponto na tela.
```

O último comando `MOVA` usa o canto superior esquerdo do ponto informado para efetuar o alinhamento do objeto. O compilador também aceita os seguinte comandos:

```
CENTRALIZE algo EM um ponto na tela.
CENTRALIZE algo EM uma caixa.
```

Álém dos comandos de posicionamento, existem comandos de transformação de objetos. Por exemplo:

`INVERTA algo.`
`ESPELHE algo.`
`ROTACIONE algo.` 

O comando `INVERTA` inverte objetos verticalmente. O comando `ESPELHE` faz a mesma coisa, mas na  horizontal. No momento o comando `ROTACIONE` só consegue rotacionar objetos em intervalos de 90 graus. Além disso o comando não funciona com textos. Essa á uma rotina que ainda está sendo aprimorada.

As últimas rotinas de transformação de objetos gráficos são:

```
REDIMENSIONE algo USANDO uma proporção. 
REDIMENSIONE algo USANDO uma porcentagem.
```

Consulte os tópicos `Desenhando` e `Máscara` para informações adicionais.

