O WINDOWS

Se voc� por acaso precisar utilizar bibliotecas e fun��es internas do Windows, voc� pode utilizar comandos semelhantes a este:

```
CHAME "NomeDaDll.dll" "NomeDafun��o" COM par�metro E RETORNE algo.
```
As cl�usulas COM e RETORNANDO s�o opcionais. Voc� deve diferenciar mai�sculas e min�sculas no nome da fun��o, usando o mesmo nome que o nome da dll do Windows ou da sua pasta. Textos devem ser passadas por endere�o e, em muitos casos, devem terminar com o byte NUL. Use "o primeiro byte do texto" para o endere�o, e a rotina a seguir para adicionar um byte nulo no final do texto:

```
ADICIONE O BYTE NULO no final de um texto.
```

Em outros casos, o Windows nos fornece n�o nome de uma fun��o, mas o endere�o dela. Voc� pode chamar essas fun��es usando uma sintaxe similar:

```
CHAME um endere�o COM esse par�metro E RETORNE algo.
```

�s vezes, o Windows precisa que n�s forne�amos o endere�o de uma de nossas rotinas para que ele possa interromper nosso previs�vel fluxo processual em algum
momento. Voc� pode usar esta sintaxe para obter o endere�o de uma rotina:

```
APONTE um ponteiro PARA ROTINA nome de rotina.
```

Mas se voc� for passar o endere�o para o Windows, certifique-se de que o cabe�alho da rotina inclua a palavra-chave COMPATIVELMENTE logo ap�s PARA, assim:

```
PARA COMPATIVELMENTE ...
```
Se voc� est� trabalhando neste n�vel ridiculamente baixo, voc� vai querer verificar as se��es "Bits", "Imperativos Especiais" e meu o c�digo fonte para mais informa��es e exemplos.

