REGISTROS

Um record � uma cole��o de itens que cont�m dados intimamente relacionados. Cada item � considerado um "campo". Os campos s�o descritos em sua pr�pria p�gina. Mas aqui est�o alguns exemplos de registros:

```
Uma caixa tem
uma coordenada esquerda, uma coordenada superior, um coordenada direita, uma coordenada inferior,
um canto superior esquerdo na coordenada esquerda, e um canto inferior direito na coordenada direita.
```

```
Uma caixa arredondada � uma caixa que tem
uma coordenada esquerda, uma coordenada superior, um coordenada direita, uma coordenada inferior,
um canto superior esquerdo na coordenada esquerda, e um canto inferior direito na coordenada direita e um raio.
```

```
Um pol�gono � uma coisa com alguns v�rtices.
```
O primeiro registro de amostra, `caixa`, tem seis campos. Mas os dois �ltimos s�o na verdade "reinterpreta��es" dos primeiros quatro. Este tipo de coisa s� funciona, � claro, quando as estruturas f�sicas de dados correspondem. Observe que a palavra `tem` � uma abrevia��o do termo `� um registro com`, que tamb�m pode ser usado.

O segundo registro, `caixa arredondada`, � uma extens�o da caixa. Tem os mesmos campos que uma caixa, e mais um novo campo chamado de `raio`. � compat�vel com a caixa, e � poss�vel usar todas as rotinas que funcionam nas caixas normais para manipul�r as caixas arredondadas � a menos que uma rotina espec�fica para caixas arredondadas tenha sido criada.

O terceiro registro, `pol�gono`, n�o tem nada al�m de uma lista de v�rtices. Como o pol�gono � definido como uma `coisa`, o compilador considera o pol�gono como uma estrutura din�mica de dados (ao inv�s de uma estrutura est�tica). Isto significa que voc� � respons�vel por alocar e lidar com a mem�ria usada por ele. Consulte o t�pico `Gerenciamento de Mem�ria` e a p�gina sobre `Pol�gonos` para obter mais informa��es.

