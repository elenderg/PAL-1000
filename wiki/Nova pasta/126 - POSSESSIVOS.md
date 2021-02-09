POSSESSIVOS

Os Possessivos s�o normalmente usados para acessar campos nos registros. Conforme o exemplo abaixo:

```
*nome do campo* QUE FAZ PARTE DO *nome do registro*.
```

Mas eles tamb�m podem ser usados para fazer refer�ncia a uma fun��o:

```
*nome da fun��o* QUE FAZ PARTE DO *nome da coisa*.
```
Se o compilador n�o conseguir encontrar o campo dentro do primeiro n�vel registro, ele verifica se existe algum campo do registro que tamb�m seja um registro. E se encontrar, usa esse campo.

Mas a primeira coisa o compilador faz ao encontrar um possessivo � verificar a exist�ncia de tr�s termos espec�ficos.
O primeiro � o seguinte:

```
um ALVO que faz parte de um ponteiro
```

Este forma � usado apenas com ponteiros. Isso diz que voc� quer saber para que item o ponteiro aponta. "Um ponteiro de byte", por exemplo, refere-se ao endere�o de um byte. "O alvo que faz parte do ponteiro de byte" se refere aos dados no byte.

Os outros possessivos especiais retornam "meta-dados" � dados a respeito dos dados.
Um deles lhe traz o tamanho, em bytes, e o outro lhe traz o endere�o:

```
*MAGNITUDE* que faz parte do *nome da vari�vel*.
*PARADEIRO* que faz parte do *nome da vari�vel*.
```

Voc� provavelmente n�o precisar� destes com muita frequ�ncia, por isso que esses nomes esquisitos foram escolhidos.

