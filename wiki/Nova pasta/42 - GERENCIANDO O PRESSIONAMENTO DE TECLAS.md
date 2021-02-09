GERENCIANDO O PRESSIONAMENTO DE TECLAS

Consulte só como é que iremos modificar nosso geremciador de pressionamento de teclas para que ele encaminhe as teclas pressionadas:

```
Para gerenciar um comando (pressionamento de tecla):
Apague o conteúdo do painel de informações.
Se o comando for modificado, gerencie o comando (atalho); prossiga.
Se o valor da tecla for imprimível, gerencie o comando (imprimível); prossiga.
Salve a tecla do comando em uma tecla.
Se a tecla for a tecla Esc, gerencie o comando (cancelar); saia.
Se a tecla for a tecla backspace, gerencie o comando (apagar texto); prossiga.
Se a tecla for a tecla enter, gerencie o comando (tecla enter); prossiga.
```
```
como pintar
```

Primeiramente, observe que consideramos qualquer tecla o início de uma nova interação, por isso nós limpamos qualquer mensagem anterior que estivesse no painel de informações. Talvez seja um pouco exagerado, mas pelo menos o painel de informações vai mostrar apenas o que interessa.

Em seguida nós gerenciamos as teclas de atalho da mesma forma que fizemos anteriormente.

Se o valor da tecla pressionada for uma letra, nós encaminhamos esse valor para outra rotina. Note que estamos verificando o valor do byte da tecla, e não a tecla em si. Temos que fazer isso porque uma tecla pode produzir caracteres imprimíveis, mas também caracteres não imprimíveis. Os comandos <kbd>Ctrl+A</kbd> e <kbd>Alt+A</kbd>, por exemplo, não são imprimíveis. Já o comando <kbd>?Shift-A</kbd> é imprimível, mas tem um valor diferente do <kbd>A</kbd> e do <kbd>a</kbd>. Se você quer saber exatamente o que é um `caractere imprimível`, procure o termo no arquivo ` o cérebro`.

Por último, colocamos a tecla que foi pressionada em uma variável local chamada tecla apenas deixar as três linhas que faltam um pouco mais curtas. Nós iremos adicionar mais quatro linhas uma para a tecla <kbd>Home</kbd>, outra para a tecla <kbd>End</kbd>, mais uma para a tecla <kbd>Page Up</kbd> e a última para a tecla <kbd>Page Down</kbd>.

