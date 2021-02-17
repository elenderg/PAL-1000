CAIXAS ARREDONDADAS

Uma "caixa arredondada" � uma caixa com cantos arredondados. O compilador usa essas caixas arredondadas no ambiente de trabalho, nos menus, abas e muitos outros lugares. Aqui est� a defini��o:

```
Uma caixa arredondada � uma caixa que tem 
uma coordenada esquerda, uma coordenada superior, um coordenada direita, uma coordenada inferior,  
um canto superior esquerdo na coordenada esquerda, e um canto inferior direito na coordenada direita e
um raio.
```

Esta � uma imagem de uma caixa arredondada, com todas as partes acima identificadas. Observe que estou usando os apelidos dos campos aqui, da mesma forma que voc� provavelmente ir� usar em seus programas.

DIREITA ESQUERDA

TOPO

BASE

CANTO SUPERIOR ESQUERDO

CANTO INFERIOR DIREITO

�

�

�

RAIO

O compilador consegue fazer caixas arredondadas a partir de especifica��es de largura e altura, ou apenas usando um par de pontos de coordenadas. O compilador consegue criar uma caixa arredondada at� mesmo usando outra caixa como base. O esquema de funcionamento � mostrado abaixo:

`FA�A uma caixa arredondada com tantas polegadas de largura POR tantas polegadas de altura COM um raio de tantas polegadas.`
`FA�A uma caixa arredondada USANDO esta localiza��o E esta outra localiza��o E este raio.`
`FA�A uma caixa arredondada USANDO esta coordenada esquerda E esta coordenada superior E esta coordenada direita E esta coordenada inferior E este raio.`
`FA�A uma caixa arredondada USANDO esta caixa E este raio.` 

O compilador consegue ` DESENHAR`  uma caixa arredondada. Bem como obter a largura, altura o ponto central entre outras coisas. E se um ponto est� DENTRO, FORA ou na BORDA da caixa. Sem mencionar todas as ` Transforma��es Gr�ficas`  de costume.

