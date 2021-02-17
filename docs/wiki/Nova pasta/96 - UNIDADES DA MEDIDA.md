UNIDADES DA MEDIDA

A unidade de medida básica para objetos gráficos é a "twip", que é 1/20 de um ponto de impressora, ou 1/1440 de uma polegada. Todas as coordenadas são expressas diretamente em twips, ou são convertidas para twips. Eis a definição:

`Um coordenada é alguns twips.`

Agora, ao contrário do modelo matemático — que considera coordenadas como invisíveis abstrações indimensionadas — o modelo do compilador entende coordenadas como pontos reais em um dispositivo, como uma tela ou uma página. Valores grande de x e y vão além da tela ou página. Aqui, por exemplo temos uma caixa com o canto superior esquerdo em `2-1` e inferior direito, em `5-3`:

0 1 2 3 4 5

0 1 2 3 4 5 6 7

· · · · · · · ·

Conte os pontos e note que a largura desta caixa é de quatro, não três, unidades. E que são três, e não duas unidades de altura. Medir desta forma faz com que o compilador desenhe bem — outra caixa entre `5-1` e `6-3`, por exemplo, irá sobrepor corretamente esta caixa ao longo de sua borda esquerda. No entanto, você pode obter a largura e a altura desta caixa na forma "matemática" — que correspondem, cada uma, a uma unidade a menos, e são inúteis para desenho. Use as funções X-EXTENT e Y-EXTENT.

Outras unidades de medida que você vai encontrar são: milissegundos, segundos, minutos e horas; polegadas e pés; kilobytes, megabytes, e gigabytes; e "porcento", que geralmente é convertido para uma proporção com 100 no denominador.

