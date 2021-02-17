﻿MENSAGENS DE STATUS

De acordo com o nosso design, o programa `Como Pintar` deve exibir o status e as mensagens de erro na parte inferior central da tela. Mais ou menos assim:

```
< informação de estado atual ou mensagem de erro>
3/4 de polegada1 polegada1 polegada1/2 polegada
```

E aqui estão as definições que precisamos para começar:

```
O painel de informações possui uma caixa e um texto.
```
```
Para inicializar o status:
Salve o centro da tela em uma posição.
Coloque o valor da coordenada x da posição no valor da coordenada esquerda do painel de informações. 
Subtraia 1 polegada do valor da coordenada esquerda do painel de informações.
Coloque o valor da coordenada x da posição no valor da coordenada direita do painel de informações. 
Adicione 1 polegada ao valor da coordenada direita do painel de informações.
Coloque o valor da coordenada inferior da tela no valor da coordenada superior do painel de informações.
Subtraia 3/4 de polegada do valor da coordenada superior do painel de informações.
Coloque o valor da coordenada inferior da tela no valor da coordenada inferior do painel de informações.
Subtraia 1/2 polegada do valor da coordenada inferior do painel de informações.
```
```
Para criar o painel de informações:
Coloque o texto do painel de informações no centro da caixa do painel de informações.
```
```
como pintar
```

Nada de extraordinário aqui.

Mas note que apesar de termos criado o status, nós ainda não criamos a caixa — a gente só usou ela como base para posicionar corretamente o texto na tela.

