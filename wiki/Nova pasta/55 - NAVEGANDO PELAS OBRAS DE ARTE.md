NAVEGANDO PELAS OBRAS DE ARTE

Aposto que voc� gostaria de ver todas as pinturas de cada termo pesquisado. Eu sei que sim. Para isso, precisaremos modificar o nosso gerenciador de pressionamento de teclas, e tamb�m ser� preciso adicionar quatro rotinas auxiliares. Aqui est� a vers�o final do nosso gerenciador:

```
Para gerenciar um comando (pressionamento de tecla):
Apague o conte�do do painel de informa��es.
Se o comando for modificado, gerencie o comando (atalho); prossiga.
Se o valor da tecla for imprim�vel, gerencie o comando (imprim�vel); prossiga.
Salve a tecla do comando em uma tecla.
Se a tecla do comando for a tecla Esc, gerencie o comando (cancelar); saia.
Se a tecla for a tecla backspace, gerencie o comando (apagar texto); prossiga.
Se a tecla for a tecla enter, gerencie o comando (tecla enter); prossiga.
Se a tecla for a tecla home, gerencie o comando (tecla home); prossiga.
Se a tecla for a tecla end, gerencie o comando (tecla end); prossiga.
Se a tecla for a tecla Page Up, gerencie o comando (tecla page up); prossiga.
Se a tecla for a tecla page down, gerencie o comando (tecla page down); prossiga.
```
```
como pintar
```

A tecla <kbd>Home</kbd> nos mostra a primeira obra de arte da lista. Se a primeira obra de arte da lista j� estiver sendo exibida, n�s iremos alertar o usu�rio.

A tecla <kbd>End</kbd> nos mostra a �ltima obra de arte da lista. Se a �ltima obra de arte da lista j� estiver sendo exibida, n�s iremos alertar o usu�rio.

A tecla <kbd>Page Up</kbd> mostra a obra de arte que estiver antes da obra de arte atual. Se a primeira obra de arte da lista estiver sendo exibida, n�s iremos alertar o usu�rio.

A tecla <kbd>Page Down</kbd> nos mostra a pr�xima obra de arte da lista. Novamente, se n�o houver mais nenhuma obra de arte na lista, n�s alertaremos o usu�rio.

