GERENCIANDO (AINDA MAIS) PRESSIONAMENTOS DE TECLA

Aqui est�o as rotinas que gerenciar�o as teclas <kbd>Home</kbd>, <kbd>End</kbd>, <kbd>Page Up</kbd>, <kbd>Page Down</kbd>, e a tecla <kbd>Enter</kbd>:

```
Para gerenciar um comando (caractere imprim�vel):
Coloque a tecla digitada ao final do texto do campo de texto.
Mostre tudo.
```
```
Para gerenciar um comando (limpar texto):
Limpe a sequ�ncia de caracteres do campo de texto.
Mostre tudo.
```
```
Para lidar com um evento (apagar letra):
Se a o texto do campo de texto estiver em branco, alerte o usu�rio; prossiga.
Remova o �ltimo caractere do texto do campo de texto.
Mostre tudo.
```
```
Para gerenciar um comando (tecla Enter):
```
```
como pintar
```

Como mencionamos anteriormente, as letras, n�meros e s�mbolos s�o simplesmente adicionadas ao texto. A tecla <kbd>Esc</kbd> limpa o conte�do do campo de texto. O cursor de texto, no entanto, ainda aparecer� j� que ele est� anexado na rotina de cria��o mesmo que o campo de texto esteja em branco. A tecla <kbd>?</kbd> ir� apagar a �ltima letra digitada, ou se n�o houver nenhum texto a ser apagado, ir� emitir um som de alerta. Nas pr�ximas p�ginas desenvolveremos a �ltima rotina (a rotina da tecla <kbd>Enter ?</kbd>).

Agora vamos executar nosso programa e test�-lo um pouco. O cursor de texto est� aparecendo? Excelente. Digite alguma coisa no campo de texto. O painel de informa��es apagou o `Ol� Mundo,`? O cursor do mouse sumiu? Excelente. Agora d� um `Alt+Tab`. Continue at� voltar ao `Como pintar`. Excelente. Teste a tecla ? para ver se o alerta sonoro funciona. Muito bem. Mova o mouse. A seta do mouse reapareceu? �timo. Clique no bot�o `Sair`. �timo.

