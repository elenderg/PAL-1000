PROGRAMAÇÃO ORIENTADA A EVENTOS

Esta é a estrutura de um programa orientado a eventos:

Se não houver eventos sendo executados, a rotina de "desenfileirar" continuará verificando a situação junto ao Windows até que o seu usuário distraído faça alguma coisa. Para encerrar o programa, você deve utilizar um dos seguintes comandos:

```
RENUNCIAR AO CONTROLE.
DELEGAR O CONTROLE.
ENTREGAR O CONTROLE.
ABANDONAR O CONTROLE.
LARGAR O CONTROLE.
```

Em algum lugar do seu código. Geralmente em um dos seus gerenciadores de eventos. Esta rotina configura as coisas para que o próximo evento que você "desenfileirar" seja nulo, terminando o seu loop de gerenciamento de eventos.

```
Para que o programa seja executado:
Inicie o programa.
Gerencie os comandos do usuário.
Feche o programa.
```
```
Para gerenciar os comandos do usuário:
Remova o evento da fila.
Se o evento não existir, ignore-o.
Gerencie o comando.
Repita.
```
```
Para gerenciar um comando:
Se a categoria do evento é "atualização de tela", [encaminhe a atualização] saia.
Se a categoria do evento é "pressionamento de tecla", [encaminhe a atualização] saia.
Se a categoria do evento é "clique do mouse", [encaminhe a atualização] saia.
[ · · · ]
```
```
seu programa
```

