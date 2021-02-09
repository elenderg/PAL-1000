OL�, GOOGLE!

Agora vamos come�ar a trabalhar na tecla <kbd>Enter</kbd>. Eis o c�digo:

```
Para gerrenciarmos um comando (tecla Enter):
Se a o texto do campo de texto estiver em branco, alerte o usu�rio; prossiga.
Mostre o termo "Trabalhando..." no painel de informa��es.
Coloque "http://images.google.com/images?q=" em uma URL.
Converta o texto do campo de texto em um texto de pesquisa.
Coloque o texto de pesquisa no fim da URL.
Leia a URL em um buffer.
Se o erro de entrada/sa�da n�o estiver em branco, mostre o erro no painel de informa��es; saia.
Crie as obras de arte usando o buffer.
Se as obras estiverem vazias, mostre "H�?" no painel de informa��es, saia.
V� para a primeira obra de arte.
```
```
como pintar
```

Se o campo de texto estiver em branco, n�o h� nada a fazer; n�s usaremos o som para alertar o usu�rio e sairemos.

Caso contr�rio, n�s vamos escrever uma mensagem no painel de informa��es (caso o Google esteja ocupado e n�o responda imediatamente). Em seguida, formulamos uma solicita��o usando um texto literal e uma vers�o do texto que seja compat�vel com o formato HTML, lendo a resposta em um buffer (que � apenas um nome chique para uma sequ�ncia de caracteres).

Se algo deu errado, relatamos o erro. Se a p�gina chegar intacta, tentamos gerar nossas obras de arte em andamento a partir dos dados no buffer. Se as obras estiverem em branco quando terminarmos, isso significa que o Google n�o entendeu nossa consulta � neste caso, dizemos "H�?" e sa�mos. Caso contr�rio, mostramos ao usu�rio a primeira obra de arte da lista.

