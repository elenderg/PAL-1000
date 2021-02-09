FLUXO PADRÃO DE ENTRADA E SAÍDA

Você pode trabalhar diretamente com o mouse usando instruções como estas:

`ARMAZENE a posição do mouse EM uma localização.`
`SE o botão esquerdo do mouse FOR PRESSIONADO, ...`
`SE o botão direito do mouse FOR LIBERADO, ...` 

Mas você provavelmente não vai precisar, a menos que esteja monitorando o mouse, enquanto o usuário arrasta alguma coisa pela tela. Na maioria das vezes, você simplesmente irá responder aos vários eventos do tipo "clique" que são enviados para o seu gerenciador de eventos.

Você pode trabalhar diretamente com o teclado usando instruções como:

`SE a tecla Esc FOR PRESSIONADA, ...`  
`SE a tecla Shift FOR LIBERADA, ...`

Mas novamente, você provavelmente não vai precisar usar esses comandos, porque o Windows funciona melhor se você apenas responder aos eventos de "tecla pressionada" que forem enviados para seu gerenciador de eventos. Você pode encontrar todas as `teclas` globais procurando por `"é uma tecla igual a"`.

Você pode trabalhar diretamente com a tela usando a variável `quadro da tela` e essa é uma variável global única:

`A tela tem uma caixa, uma altura de pixel e uma largura de pixel.`

Mas você não deveria. Em vez disso, é melhor que você use a tela virtual, para aí sim passar o conteúdo da tela virtual para a tela real usando o comando:

`ATUALIZE A TELA.`

Consulte o tópico `Desenhando` para obter mais informações. Mas não hesite em usar `a caixa da tela` e todos os campos da tela ao inicializar suas coisas.

