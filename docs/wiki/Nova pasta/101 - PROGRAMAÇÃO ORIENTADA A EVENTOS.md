PROGRAMA��O ORIENTADA A EVENTOS

Esta � a estrutura de um programa orientado a eventos:

Se n�o houver eventos sendo executados, a rotina de "desenfileirar" continuar� verificando a situa��o junto ao Windows at� que o seu usu�rio distra�do fa�a alguma coisa. Para encerrar o programa, voc� deve utilizar um dos seguintes comandos:

```
RENUNCIAR AO CONTROLE.
DELEGAR O CONTROLE.
ENTREGAR O CONTROLE.
ABANDONAR O CONTROLE.
LARGAR O CONTROLE.
```

Em algum lugar do seu c�digo. Geralmente em um dos seus gerenciadores de eventos. Esta rotina configura as coisas para que o pr�ximo evento que voc� "desenfileirar" seja nulo, terminando o seu loop de gerenciamento de eventos.

```
Para que o programa seja executado:
Inicie o programa.
Gerencie os comandos do usu�rio.
Feche o programa.
```
```
Para gerenciar os comandos do usu�rio:
Remova o evento da fila.
Se o evento n�o existir, ignore-o.
Gerencie o comando.
Repita.
```
```
Para gerenciar um comando:
Se a categoria do evento � "atualiza��o de tela", [encaminhe a atualiza��o] saia.
Se a categoria do evento � "pressionamento de tecla", [encaminhe a atualiza��o] saia.
Se a categoria do evento � "clique do mouse", [encaminhe a atualiza��o] saia.
[ � � � ]
```
```
seu programa
```

