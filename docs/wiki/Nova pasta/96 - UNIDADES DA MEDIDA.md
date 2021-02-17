UNIDADES DA MEDIDA

A unidade de medida b�sica para objetos gr�ficos � a "twip", que � 1/20 de um ponto de impressora, ou 1/1440 de uma polegada. Todas as coordenadas s�o expressas diretamente em twips, ou s�o convertidas para twips. Eis a defini��o:

`Um coordenada � alguns twips.`

Agora, ao contr�rio do modelo matem�tico � que considera coordenadas como invis�veis abstra��es indimensionadas � o modelo do compilador entende coordenadas como pontos reais em um dispositivo, como uma tela ou uma p�gina. Valores grande de x e y v�o al�m da tela ou p�gina. Aqui, por exemplo temos uma caixa com o canto superior esquerdo em `2-1` e inferior direito, em `5-3`:

0 1 2 3 4 5

0 1 2 3 4 5 6 7

� � � � � � � �

Conte os pontos e note que a largura desta caixa � de quatro, n�o tr�s, unidades. E que s�o tr�s, e n�o duas unidades de altura. Medir desta forma faz com que o compilador desenhe bem � outra caixa entre `5-1` e `6-3`, por exemplo, ir� sobrepor corretamente esta caixa ao longo de sua borda esquerda. No entanto, voc� pode obter a largura e a altura desta caixa na forma "matem�tica" � que correspondem, cada uma, a uma unidade a menos, e s�o in�teis para desenho. Use as fun��es X-EXTENT e Y-EXTENT.

Outras unidades de medida que voc� vai encontrar s�o: milissegundos, segundos, minutos e horas; polegadas e p�s; kilobytes, megabytes, e gigabytes; e "porcento", que geralmente � convertido para uma propor��o com 100 no denominador.

