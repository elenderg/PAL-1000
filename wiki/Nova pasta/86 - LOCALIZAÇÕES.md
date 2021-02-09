LOCALIZA��ES

Uma "localiza��o" ou "posi��o" ou ainda "ponto na tela" � um dos objetos gr�ficos mais b�sicos do compilador. Esta n�o � bem a melhor defini��o pra agora vai servir:

`Uma localiza��o � um registro que tem uma coordenada x e uma coordenada y.`

Esta � uma imagem de uma localiza��o, com as partes acima identificadas. Note que estou usando os apelidos dos campos aqui, como voc� provavelmente usar� em seus programas.

COORDENADA X �

COORDENADA Y �

Localiza��es s�o feitas a partir de um x e um y, ou voc� pode obter uma de outro lugar:

`FA�A uma localiza��o USANDO isto E aquilo.`
`ARMAZENE a posi��o do mouse EM uma localiza��o.`  

O compilador consegue DESENHAR uma localiza��o. Mas n�o espere que seja r�pido o suficiente para ser �til. O processamento de v�deo do Windows � uma das suas piores caracter�sticas. E j� que ele s� oferece recursos ruins, isso n�o � l� muito encorajador.

Posi��es s�o usadas principalmente como componentes de outros objetos gr�ficos. Como caixas, linhas, v�rtices e pol�gonos. �s vezes, elas s�o usados como coordenadas abstratas sem representa��o vis�vel, como "a localiza��o do mouse" no exemplo acima. Consulte a p�gina "Unidades de medida" para uma discuss�o completa sobre coordenadas.

O compilador possui rotinas que podem identificar se uma localiza��o EST� DENTRO ou NA BORDA de qualquer outro objeto gr�fico (na borda significa em cima). Quando voc� v� se algo est� DENTRO, isso inclui as bordas. As rotinas que identificam se algo est� na borda s�o usadas pelo caderno e incluem uma margem de erro de 3 pixels para ficar mais f�cil de clicar nas formas. Voc� pode copiar essas rotinas e retirar essas margens de toler�ncia, se quiser.

