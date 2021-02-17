BOT�ES

A nossa mensagem de status era uma coisa �nica. Mas os nossos bot�es n�o s�o.
Os seus nomes s�o diferentes, � claro, e cada um faz uso de uma rotina diferente. Mas sua forma e comportamento geral s�o id�nticos.

Podemos, portanto, definir <code>bot�o</code> de uma forma gen�rica, junto com um punhado de de rotinas de suporte que funcionar�o com qualquer bot�o. Come�amos aqui:

```
Um bot�o tem uma caixa e um nome.
```
```
Para fazer um bot�o usando uma coordenada e um nome:
Coloque o valor da coordenada x no valor da coordenada esquerda do bot�o.
Subtraia a largura do nome do valor da coordenada esquerda do bot�o.
Coloque o valor da coordenada y no valor da coordenada do topo do bot�o.
Subtraia 1/4 de polegada do valor da coordenada do topo do bot�o.
Coloque o valor da coordenada no canto inferior direito do bot�o.
Coloque o nome informado no nome do bot�o.
```
```
como pintar
```

Se voc� � um programador inteligente com muita experi�ncia e uma profunda compreens�o de gram�tica, voc� ser� capaz de deduzir que o artigo indefinido no in�cio da primeira defini��o indica que estamos definindo um tipo, n�o � uma vari�vel.
Se voc� n�o for, voc� vai simplesmente pensar, "Um bot�o tem uma caixa e um nome". Tamb�m n�o h� problemas em pensar dessa forma.

Mas se voc� � um leitor observador, experiente ou n�o, voc� ir� concluir que bot�es n�o requerem aloca��o de mem�ria din�mica, j� que usamos a palavra "fazer" em vez de "criar" no cabe�alho da segunda defini��o.

E voc� ver� tamb�m, espero eu, que a largura de um bot�o depende do seu nome, e
que o ponto com que come�amos est� na parte inferior direita do bot�o.

