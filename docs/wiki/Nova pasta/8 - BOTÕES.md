BOTÕES

A nossa mensagem de status era uma coisa única. Mas os nossos botões não são.
Os seus nomes são diferentes, é claro, e cada um faz uso de uma rotina diferente. Mas sua forma e comportamento geral são idênticos.

Podemos, portanto, definir <code>botão</code> de uma forma genérica, junto com um punhado de de rotinas de suporte que funcionarão com qualquer botão. Começamos aqui:

```
Um botão tem uma caixa e um nome.
```
```
Para fazer um botão usando uma coordenada e um nome:
Coloque o valor da coordenada x no valor da coordenada esquerda do botão.
Subtraia a largura do nome do valor da coordenada esquerda do botão.
Coloque o valor da coordenada y no valor da coordenada do topo do botão.
Subtraia 1/4 de polegada do valor da coordenada do topo do botão.
Coloque o valor da coordenada no canto inferior direito do botão.
Coloque o nome informado no nome do botão.
```
```
como pintar
```

Se você é um programador inteligente com muita experiência e uma profunda compreensão de gramática, você será capaz de deduzir que o artigo indefinido no início da primeira definição indica que estamos definindo um tipo, não é uma variável.
Se você não for, você vai simplesmente pensar, "Um botão tem uma caixa e um nome". Também não há problemas em pensar dessa forma.

Mas se você é um leitor observador, experiente ou não, você irá concluir que botões não requerem alocação de memória dinâmica, já que usamos a palavra "fazer" em vez de "criar" no cabeçalho da segunda definição.

E você verá também, espero eu, que a largura de um botão depende do seu nome, e
que o ponto com que começamos está na parte inferior direita do botão.

