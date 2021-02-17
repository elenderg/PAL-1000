PAR�METROS

Uma vari�vel se torna um "par�metro" quando ela � passada para uma rotina. Para utilizar os par�metros em uma rotina, voc� precisa informar a quantidade e os tipos de par�metros no cabe�alho da rotina. Eis alguns cabe�alhos de rotina de amostra:

```
Para adicionar um n�mero a outro n�mero:
Para decidir se uma localiza��o est� dentro de alguns pol�gonos:
Para colocar o centro de uma elipse em uma localiza��o:
```
A primeira rotina � um procedimento que espera dois par�metros: `um n�mero` e `outro n�mero`. O primeiro � um par�metro entrada; o segundo tamb�m � um par�metro de entrada mas ser� devolvido na sa�da da rotina.

A segunda rotina � apenas um decisor comum. Ela tamb�m espera dois par�metros, `uma localiza��o` e `alguns pol�gonos`. Ambos os par�metros s�o somente de entrada.

A terceira rotina � uma fun��o com dois par�metros: `uma elipse` e `uma localiza��o`.
A elipse � o par�metro de entrada e a localiza��o � o par�metro de sa�da.

As defini��es de par�metros s�o f�ceis de identificar porque sempre come�am com um
artigo indefinido (`UM`, `UMA`, `UNS`, `UMAS` ou `ALGUM`, `ALGUMA`, `ALGUNS`, `ALGUMAS`) seguido por um substantivo. Voc� pode ler mais sobre nomes sob o t�pico `Nomes`.

Observe que quando par�metros s�o passados para rotinas, o compilador passa o par�metro original, e n�o c�pias. � por isso que voc� pode us�-las na entradas, sa�da ou nos dois. �s vezes, no entanto, voc� queira manipular o valor de um par�metro sem afetar a variavel original. Neste caso, voc� pode utilizar o seguinte comando:

```
PRIVATIZE um par�metro.
```

E o compilador far� uma c�pia do par�metro para voc�. Conforme explicado anteriormente, voc� continuar� utilizando o mesmo nome do par�metro, j� que a vari�vel original ser� renomeada apenas temporariamente. A vari�vel original receber� o sufixo `original` no nome dela, para que voc� ainda possa acess�-la se precisar.

