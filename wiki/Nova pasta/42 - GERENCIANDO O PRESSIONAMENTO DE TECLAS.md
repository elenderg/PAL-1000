GERENCIANDO O PRESSIONAMENTO DE TECLAS

Consulte s� como � que iremos modificar nosso geremciador de pressionamento de teclas para que ele encaminhe as teclas pressionadas:

```
Para gerenciar um comando (pressionamento de tecla):
Apague o conte�do do painel de informa��es.
Se o comando for modificado, gerencie o comando (atalho); prossiga.
Se o valor da tecla for imprim�vel, gerencie o comando (imprim�vel); prossiga.
Salve a tecla do comando em uma tecla.
Se a tecla for a tecla Esc, gerencie o comando (cancelar); saia.
Se a tecla for a tecla backspace, gerencie o comando (apagar texto); prossiga.
Se a tecla for a tecla enter, gerencie o comando (tecla enter); prossiga.
```
```
como pintar
```

Primeiramente, observe que consideramos qualquer tecla o in�cio de uma nova intera��o, por isso n�s limpamos qualquer mensagem anterior que estivesse no painel de informa��es. Talvez seja um pouco exagerado, mas pelo menos o painel de informa��es vai mostrar apenas o que interessa.

Em seguida n�s gerenciamos as teclas de atalho da mesma forma que fizemos anteriormente.

Se o valor da tecla pressionada for uma letra, n�s encaminhamos esse valor para outra rotina. Note que estamos verificando o valor do byte da tecla, e n�o a tecla em si. Temos que fazer isso porque uma tecla pode produzir caracteres imprim�veis, mas tamb�m caracteres n�o imprim�veis. Os comandos <kbd>Ctrl+A</kbd> e <kbd>Alt+A</kbd>, por exemplo, n�o s�o imprim�veis. J� o comando <kbd>?Shift-A</kbd> � imprim�vel, mas tem um valor diferente do <kbd>A</kbd> e do <kbd>a</kbd>. Se voc� quer saber exatamente o que � um `caractere imprim�vel`, procure o termo no arquivo ` o c�rebro`.

Por �ltimo, colocamos a tecla que foi pressionada em uma vari�vel local chamada tecla apenas deixar as tr�s linhas que faltam um pouco mais curtas. N�s iremos adicionar mais quatro linhas uma para a tecla <kbd>Home</kbd>, outra para a tecla <kbd>End</kbd>, mais uma para a tecla <kbd>Page Up</kbd> e a �ltima para a tecla <kbd>Page Down</kbd>.

