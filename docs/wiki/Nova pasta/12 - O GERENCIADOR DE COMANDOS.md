O GERENCIADOR DE COMANDOS

A caixa de ferramentas do Windows inclui centenas de eventos que, em tese, devem ser gerenciados em qualquer aplicativo significativo. O curioso � que esse compilador (e todos os outros programas embutidos, desde `o ambiente de trabalho, localizador de arquivos, caderno`, etc) foram feitos usando apenas 10 eventos. Isso mesmo, apenas 10.

O nosso programa vai usar lidar com 04 tipos de comandos do usu�rio. Insira este c�digo:

```
Para gerenciar um comando do usu�rio:
Se o tipo do comando for "definir cursor", gerencie o comando (definir cursor); prossiga.
Se o tipo do comando for "atualiza��o", gerencie o comando (atualiza��o); prossiga.
Se o tipo do comando for "clique do mouse", gerencie o comando (clique do mouse); prossiga.
Se o tipo do comando for "pressionamento de tecla", gerencie o comando (pressionamento de tecla); saia.
```
```
Para gerenciar o comando (defini��o de cursor):
Mostrar o cursor da seta.
```
```
Para gerenciar um comando do usu�rio (atualiza��o):
```
```
Para gerenciar um comando do usu�rio (clique do mouse):
```
```
Para gerenciar um comando do usu�rio (pressionamento de tecla):
```
```
como pintar
```

Se voc� � um veterano, voc� provavelmente adivinhou que `o comando do usu�rio` � uma vari�vel do tipo registro e que `tipo` � um campo desse registro. E sim, o `campo` � uma string. Voc� pode saber mais sobre eventos, registros, campos e caracteres encadeados nas se��es de refer�ncia deste livro. Se voc� for um iniciante, apenas tente se lembrar dos qualificadores e siga em frente.

