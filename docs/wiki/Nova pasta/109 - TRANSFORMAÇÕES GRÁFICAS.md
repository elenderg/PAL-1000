TRANSFORMA��ES GR�FICAS

O compilador possui uma s�rie de rotinas para manipula��o gr�fica. Os objetos gr�ficos podem ser manipulados de diversas formas. Por exemplo, voc� pode usar os comandos:

```
MOVA alguma coisa PARA CIMA tantos pixels. 
MOVA alguma coisa PARA BAIXO tantos pixels. 
MOVA alguma coisa PARA A ESQUERDA tantos pixels.
MOVA alguma coisa PARA A DIREITA tantos pixels.
MOVA alguma coisa USANDO um valor x E um valor y.
MOVA algo PARA um ponto na tela.
```

O �ltimo comando `MOVA` usa o canto superior esquerdo do ponto informado para efetuar o alinhamento do objeto. O compilador tamb�m aceita os seguinte comandos:

```
CENTRALIZE algo EM um ponto na tela.
CENTRALIZE algo EM uma caixa.
```

�l�m dos comandos de posicionamento, existem comandos de transforma��o de objetos. Por exemplo:

`INVERTA algo.`
`ESPELHE algo.`
`ROTACIONE algo.` 

O comando `INVERTA` inverte objetos verticalmente. O comando `ESPELHE` faz a mesma coisa, mas na  horizontal. No momento o comando `ROTACIONE` s� consegue rotacionar objetos em intervalos de 90 graus. Al�m disso o comando n�o funciona com textos. Essa � uma rotina que ainda est� sendo aprimorada.

As �ltimas rotinas de transforma��o de objetos gr�ficos s�o:

```
REDIMENSIONE algo USANDO uma propor��o. 
REDIMENSIONE algo USANDO uma porcentagem.
```

Consulte os t�picos `Desenhando` e `M�scara` para informa��es adicionais.

