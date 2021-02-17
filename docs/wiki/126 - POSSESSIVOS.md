POSSESSIVOS

Os Possessivos são normalmente usados para acessar campos nos registros. Conforme o exemplo abaixo:

```
*nome do campo* QUE FAZ PARTE DO *nome do registro*.
```

Mas eles também podem ser usados para fazer referência a uma função:

```
*nome da função* QUE FAZ PARTE DO *nome da coisa*.
```
Se o compilador não conseguir encontrar o campo dentro do primeiro nível registro, ele verifica se existe algum campo do registro que também seja um registro. E se encontrar, usa esse campo.

Mas a primeira coisa o compilador faz ao encontrar um possessivo é verificar a existência de três termos específicos.
O primeiro é o seguinte:

```
um ALVO que faz parte de um ponteiro
```

Este forma é usado apenas com ponteiros. Isso diz que você quer saber para que item o ponteiro aponta. "Um ponteiro de byte", por exemplo, refere-se ao endereço de um byte. "O alvo que faz parte do ponteiro de byte" se refere aos dados no byte.

Os outros possessivos especiais retornam "meta-dados" — dados a respeito dos dados.
Um deles lhe traz o tamanho, em bytes, e o outro lhe traz o endereço:

```
*MAGNITUDE* que faz parte do *nome da variável*.
*PARADEIRO* que faz parte do *nome da variável*.
```

Você provavelmente não precisará destes com muita frequência, por isso que esses nomes esquisitos foram escolhidos.

