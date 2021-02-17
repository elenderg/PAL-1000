EVITANDO FALHAS DURANTE A EXIBIÇÃO DO PROGRAMA

É hora de começar a pensar em colocar algo na tela. O que, infelizmente, é mais difícil do que deveria. Existem duas dificuldades que devemos superar. A primeira delas envolve a taxa de atualização do conteúdo na tela do monitor.

Freqüentemente, uma tela completa consiste em um número de objetos distintos e sobrepostos, sendo que os elementos da parte de trás costumam ser exibidos antes que os elementos da parte da frente. O PAL, por exemplo, tem um grande painel cinza na parte de trás e algumas letras maiúsculas na frente dos botões brancos e arredondados do menu (que ficam no meio das letras e do fundo cinza).

Se cada parte aparece na ordem, você veria uma espécie de cintilação no seu monitor. Os menus desapareceriam momentaneamente (enquanto o fundo cinza estivesse sendo exibido), logo depois os botões apareceriam, um de cada vez, primeiro sem as letras, e depois com elas, e assim por diante. Isso não só tira a atenção. É algo bem chato e irritante. É até feio pra falar a verdade.

Nós resolvemos esse problema da mesma forma que um pintor resolveria. Antes da pintura ser concluída, ela não é revelada ao público. Apenas quando ela está pronta é que nós revelamos tudo de uma vez. O esquema de funcionamento é mostrado abaixo:

```
criar atualizar
```
```QUADROTELA```
```
exibir
```

Observe os termos no diagrama acima. Por convenção, usamos a palavra `criar` para indicar que estamos trabalhando na tela que ainda não está visível para o usuário. Usamos a palavra `atualizar` quando transferimos o conteúdo do quadro para a tela. E usamos o verbo `mostrar/exibir` quando queremos que ambos aconteçam em uma rápida sucessão.

