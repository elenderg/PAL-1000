A MÁGICA

Em nossa pequena caixa de texto, iremos digitamos o nome de qualquer pessoa, lugar ou coisa imaginável e apertar a tecla <kbd>Enter</kbd>. Após alguns segundos, uma pintura original, pintada no mesmo estilo de Claude Monet, aparecerá na tela. O usuário poderá ver várias outras obras de arte similares apenas utilizando as teclas <kbd>Page Up</kbd> e <kbd>Page Down</kbd>. Incrível.

Mas como é que vamos fazer com que isso aconteça?

É claro que se ele estivesse vivo, o próprio Claude Monet pintaria as obras de arte para nós. Como ele não está, nos simplesmente encontraremos alguas coisas que ficariam boas se ele pintasse. Em seguida, nós criaremos algumas obras de arte com base nesses coisas. E como criaremos uma obra de arte com base em um modelo? Mais uma vez, da mesma forma que o próprio Monet faria. Pegando a fotografia original, misturandp um pouco de tinta, e dando umas pinceladas por cima. Repetindo até terminar o quadro.

Tudo o que precisamos agora são (1) alguns modelos, e (2) uma rotina que pinte usando o modelo como base.

Bem, a segunda parte é relativamente fácil. Já ensinamos o `Como pintar` a dar uma pincelada na tela — é assim que nosso programa cria o plano de fundo toda vez que ele é executado. Dessa forma, a única diferença é que utilizaremos um modelo como base.

É a primeira parte que é complicada. Onde vamos encontrar imagens para qualquer coisa que o usuário digite? Uma paisagem desértica. Um arco íris. Uma Ferrari.
Não é muito prático guardar todo tipo de imagem em um programa que deveria ter poucos kilobytes. Ainda bem que isso não é necessário. Pra quê guardar imagens se temos o Google?
No Google Imagens podemos encontrar qualquer imagem que pensarmos.  De graça.

Eis o plano.

Quando a tecla <kbd>Enter</kbd> for pressionada, Google nos dará uma página cheia de URLs (localizadores de recursos) que contém as imagens relacionadas ao termo de pesquisa do usuário. Nós armazenaremos cada uma dessas URLs como se fosse um modelo esperando para virar obra de arte. Então, quando for hora de exibir a obra de arte, iremos pintá-la, usando a rotina que criamos.

