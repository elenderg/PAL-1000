A M�GICA

Em nossa pequena caixa de texto, iremos digitamos o nome de qualquer pessoa, lugar ou coisa imagin�vel e apertar a tecla <kbd>Enter</kbd>. Ap�s alguns segundos, uma pintura original, pintada no mesmo estilo de Claude Monet, aparecer� na tela. O usu�rio poder� ver v�rias outras obras de arte similares apenas utilizando as teclas <kbd>Page Up</kbd> e <kbd>Page Down</kbd>. Incr�vel.

Mas como � que vamos fazer com que isso aconte�a?

� claro que se ele estivesse vivo, o pr�prio Claude Monet pintaria as obras de arte para n�s. Como ele n�o est�, nos simplesmente encontraremos alguas coisas que ficariam boas se ele pintasse. Em seguida, n�s criaremos algumas obras de arte com base nesses coisas. E como criaremos uma obra de arte com base em um modelo? Mais uma vez, da mesma forma que o pr�prio Monet faria. Pegando a fotografia original, misturandp um pouco de tinta, e dando umas pinceladas por cima. Repetindo at� terminar o quadro.

Tudo o que precisamos agora s�o (1) alguns modelos, e (2) uma rotina que pinte usando o modelo como base.

Bem, a segunda parte � relativamente f�cil. J� ensinamos o `Como pintar` a dar uma pincelada na tela � � assim que nosso programa cria o plano de fundo toda vez que ele � executado. Dessa forma, a �nica diferen�a � que utilizaremos um modelo como base.

� a primeira parte que � complicada. Onde vamos encontrar imagens para qualquer coisa que o usu�rio digite? Uma paisagem des�rtica. Um arco �ris. Uma Ferrari.
N�o � muito pr�tico guardar todo tipo de imagem em um programa que deveria ter poucos kilobytes. Ainda bem que isso n�o � necess�rio. Pra qu� guardar imagens se temos o Google?
No Google Imagens podemos encontrar qualquer imagem que pensarmos.  De gra�a.

Eis o plano.

Quando a tecla <kbd>Enter</kbd> for pressionada, Google nos dar� uma p�gina cheia de URLs (localizadores de recursos) que cont�m as imagens relacionadas ao termo de pesquisa do usu�rio. N�s armazenaremos cada uma dessas URLs como se fosse um modelo esperando para virar obra de arte. Ent�o, quando for hora de exibir a obra de arte, iremos pint�-la, usando a rotina que criamos.

