﻿O GERENCIADOR DE COMANDOS

A caixa de ferramentas do Windows inclui centenas de eventos que, em tese, devem ser gerenciados em qualquer aplicativo significativo. O curioso é que esse compilador (e todos os outros programas embutidos, desde `o ambiente de trabalho, localizador de arquivos, caderno`, etc) foram feitos usando apenas 10 eventos. Isso mesmo, apenas 10.

O nosso programa vai usar lidar com 04 tipos de comandos do usuário. Insira este código:

```
Para gerenciar um comando do usuário:
Se o tipo do comando for "definir cursor", gerencie o comando (definir cursor); prossiga.
Se o tipo do comando for "atualização", gerencie o comando (atualização); prossiga.
Se o tipo do comando for "clique do mouse", gerencie o comando (clique do mouse); prossiga.
Se o tipo do comando for "pressionamento de tecla", gerencie o comando (pressionamento de tecla); saia.
```
```
Para gerenciar o comando (definição de cursor):
Mostrar o cursor da seta.
```
```
Para gerenciar um comando do usuário (atualização):
```
```
Para gerenciar um comando do usuário (clique do mouse):
```
```
Para gerenciar um comando do usuário (pressionamento de tecla):
```
```
como pintar
```

Se você é um veterano, você provavelmente adivinhou que `o comando do usuário` é uma variável do tipo registro e que `tipo` é um campo desse registro. E sim, o `campo` é uma string. Você pode saber mais sobre eventos, registros, campos e caracteres encadeados nas seções de referência deste livro. Se você for um iniciante, apenas tente se lembrar dos qualificadores e siga em frente.

