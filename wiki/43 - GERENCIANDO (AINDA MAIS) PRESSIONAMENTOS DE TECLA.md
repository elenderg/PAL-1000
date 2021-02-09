﻿GERENCIANDO (AINDA MAIS) PRESSIONAMENTOS DE TECLA

Aqui estão as rotinas que gerenciarão as teclas <kbd>Home</kbd>, <kbd>End</kbd>, <kbd>Page Up</kbd>, <kbd>Page Down</kbd>, e a tecla <kbd>Enter</kbd>:

```
Para gerenciar um comando (caractere imprimível):
Coloque a tecla digitada ao final do texto do campo de texto.
Mostre tudo.
```
```
Para gerenciar um comando (limpar texto):
Limpe a sequência de caracteres do campo de texto.
Mostre tudo.
```
```
Para lidar com um evento (apagar letra):
Se a o texto do campo de texto estiver em branco, alerte o usuário; prossiga.
Remova o último caractere do texto do campo de texto.
Mostre tudo.
```
```
Para gerenciar um comando (tecla Enter):
```
```
como pintar
```

Como mencionamos anteriormente, as letras, números e símbolos são simplesmente adicionadas ao texto. A tecla <kbd>Esc</kbd> limpa o conteúdo do campo de texto. O cursor de texto, no entanto, ainda aparecerá já que ele está anexado na rotina de criação mesmo que o campo de texto esteja em branco. A tecla <kbd>?</kbd> irá apagar a última letra digitada, ou se não houver nenhum texto a ser apagado, irá emitir um som de alerta. Nas próximas páginas desenvolveremos a última rotina (a rotina da tecla <kbd>Enter ?</kbd>).

Agora vamos executar nosso programa e testá-lo um pouco. O cursor de texto está aparecendo? Excelente. Digite alguma coisa no campo de texto. O painel de informações apagou o `Olá Mundo,`? O cursor do mouse sumiu? Excelente. Agora dê um `Alt+Tab`. Continue até voltar ao `Como pintar`. Excelente. Teste a tecla ? para ver se o alerta sonoro funciona. Muito bem. Mova o mouse. A seta do mouse reapareceu? Ótimo. Clique no botão `Sair`. Ótimo.

