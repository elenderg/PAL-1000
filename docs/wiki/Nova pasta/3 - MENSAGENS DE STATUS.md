MENSAGENS DE STATUS

De acordo com o nosso design, o programa `Como Pintar` deve exibir o status e as mensagens de erro na parte inferior central da tela. Mais ou menos assim:

```
< informa��o de estado atual ou mensagem de erro>
3/4 de polegada1 polegada1 polegada1/2 polegada
```

E aqui est�o as defini��es que precisamos para come�ar:

```
O painel de informa��es possui uma caixa e um texto.
```
```
Para inicializar o status:
Salve o centro da tela em uma posi��o.
Coloque o valor da coordenada x da posi��o no valor da coordenada esquerda do painel de informa��es. 
Subtraia 1 polegada do valor da coordenada esquerda do painel de informa��es.
Coloque o valor da coordenada x da posi��o no valor da coordenada direita do painel de informa��es. 
Adicione 1 polegada ao valor da coordenada direita do painel de informa��es.
Coloque o valor da coordenada inferior da tela no valor da coordenada superior do painel de informa��es.
Subtraia 3/4 de polegada do valor da coordenada superior do painel de informa��es.
Coloque o valor da coordenada inferior da tela no valor da coordenada inferior do painel de informa��es.
Subtraia 1/2 polegada do valor da coordenada inferior do painel de informa��es.
```
```
Para criar o painel de informa��es:
Coloque o texto do painel de informa��es no centro da caixa do painel de informa��es.
```
```
como pintar
```

Nada de extraordin�rio aqui.

Mas note que apesar de termos criado o status, n�s ainda n�o criamos a caixa � a gente s� usou ela como base para posicionar corretamente o texto na tela.

