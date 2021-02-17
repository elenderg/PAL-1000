EVITANDO FALHAS DURANTE A EXIBI��O DO PROGRAMA

� hora de come�ar a pensar em colocar algo na tela. O que, infelizmente, � mais dif�cil do que deveria. Existem duas dificuldades que devemos superar. A primeira delas envolve a taxa de atualiza��o do conte�do na tela do monitor.

Freq�entemente, uma tela completa consiste em um n�mero de objetos distintos e sobrepostos, sendo que os elementos da parte de tr�s costumam ser exibidos antes que os elementos da parte da frente. O PAL, por exemplo, tem um grande painel cinza na parte de tr�s e algumas letras mai�sculas na frente dos bot�es brancos e arredondados do menu (que ficam no meio das letras e do fundo cinza).

Se cada parte aparece na ordem, voc� veria uma esp�cie de cintila��o no seu monitor. Os menus desapareceriam momentaneamente (enquanto o fundo cinza estivesse sendo exibido), logo depois os bot�es apareceriam, um de cada vez, primeiro sem as letras, e depois com elas, e assim por diante. Isso n�o s� tira a aten��o. � algo bem chato e irritante. � at� feio pra falar a verdade.

N�s resolvemos esse problema da mesma forma que um pintor resolveria. Antes da pintura ser conclu�da, ela n�o � revelada ao p�blico. Apenas quando ela est� pronta � que n�s revelamos tudo de uma vez. O esquema de funcionamento � mostrado abaixo:

```
criar atualizar
```
```QUADROTELA```
```
exibir
```

Observe os termos no diagrama acima. Por conven��o, usamos a palavra `criar` para indicar que estamos trabalhando na tela que ainda n�o est� vis�vel para o usu�rio. Usamos a palavra `atualizar` quando transferimos o conte�do do quadro para a tela. E usamos o verbo `mostrar/exibir` quando queremos que ambos aconte�am em uma r�pida sucess�o.

