FLUXO PADR�O DE ENTRADA E SA�DA

Voc� pode trabalhar diretamente com o mouse usando instru��es como estas:

`ARMAZENE a posi��o do mouse EM uma localiza��o.`
`SE o bot�o esquerdo do mouse FOR PRESSIONADO, ...`
`SE o bot�o direito do mouse FOR LIBERADO, ...` 

Mas voc� provavelmente n�o vai precisar, a menos que esteja monitorando o mouse, enquanto o usu�rio arrasta alguma coisa pela tela. Na maioria das vezes, voc� simplesmente ir� responder aos v�rios eventos do tipo "clique" que s�o enviados para o seu gerenciador de eventos.

Voc� pode trabalhar diretamente com o teclado usando instru��es como:

`SE a tecla Esc FOR PRESSIONADA, ...`  
`SE a tecla Shift FOR LIBERADA, ...`

Mas novamente, voc� provavelmente n�o vai precisar usar esses comandos, porque o Windows funciona melhor se voc� apenas responder aos eventos de "tecla pressionada" que forem enviados para seu gerenciador de eventos. Voc� pode encontrar todas as `teclas` globais procurando por `"� uma tecla igual a"`.

Voc� pode trabalhar diretamente com a tela usando a vari�vel `quadro da tela` e essa � uma vari�vel global �nica:

`A tela tem uma caixa, uma altura de pixel e uma largura de pixel.`

Mas voc� n�o deveria. Em vez disso, � melhor que voc� use a tela virtual, para a� sim passar o conte�do da tela virtual para a tela real usando o comando:

`ATUALIZE A TELA.`

Consulte o t�pico `Desenhando` para obter mais informa��es. Mas n�o hesite em usar `a caixa da tela` e todos os campos da tela ao inicializar suas coisas.

