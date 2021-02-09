﻿REGISTROS

Um record é uma coleção de itens que contém dados intimamente relacionados. Cada item é considerado um "campo". Os campos são descritos em sua própria página. Mas aqui estão alguns exemplos de registros:

```
Uma caixa tem
uma coordenada esquerda, uma coordenada superior, um coordenada direita, uma coordenada inferior,
um canto superior esquerdo na coordenada esquerda, e um canto inferior direito na coordenada direita.
```

```
Uma caixa arredondada é uma caixa que tem
uma coordenada esquerda, uma coordenada superior, um coordenada direita, uma coordenada inferior,
um canto superior esquerdo na coordenada esquerda, e um canto inferior direito na coordenada direita e um raio.
```

```
Um polígono é uma coisa com alguns vértices.
```
O primeiro registro de amostra, `caixa`, tem seis campos. Mas os dois últimos são na verdade "reinterpretações" dos primeiros quatro. Este tipo de coisa só funciona, é claro, quando as estruturas físicas de dados correspondem. Observe que a palavra `tem` é uma abreviação do termo `é um registro com`, que também pode ser usado.

O segundo registro, `caixa arredondada`, é uma extensão da caixa. Tem os mesmos campos que uma caixa, e mais um novo campo chamado de `raio`. É compatível com a caixa, e é possível usar todas as rotinas que funcionam nas caixas normais para manipulár as caixas arredondadas — a menos que uma rotina específica para caixas arredondadas tenha sido criada.

O terceiro registro, `polígono`, não tem nada além de uma lista de vértices. Como o polígono é definido como uma `coisa`, o compilador considera o polígono como uma estrutura dinâmica de dados (ao invés de uma estrutura estática). Isto significa que você é responsável por alocar e lidar com a memória usada por ele. Consulte o tópico `Gerenciamento de Memória` e a página sobre `Polígonos` para obter mais informações.

