COISAS

Uma das palavras mais imporantes do compilador � a palavra "coisa". Sempre que o compilador l� a palavra coisa, ele cria um registro especial de tamanho din�mico, al�m de criar um registro especial de lista encadeada, assim voc� pode criar uma lista de coisas. No nosso programa de exemplo, usamos o seguinte comando:

`Uma obra de arte � uma coisa que tem uma URL e uma pintura.`

Mas a defini��o pode ser expandida para ficar assim:

`Uma obra de arte � um ponteiro para um registro de obra de arte.`
`Uma registro de obra de arte � um registro que tem uma pr�xima obra de arte, uma URL e uma pintura.`
`Algumas obras de arte s�o algumas coisas que t�m uma primeira obra de arte e uma �ltima obra de arte.`

Obviamente voc� n�o sabia disso. De qualquer forma, isso permite que voc� utilize os comandos:

`ADICIONE uma coisa NO FINAL de algumas coisas.`
`ADICIONE algumas coisas NO FINAL de outras coisas.`
`INSIRA uma coisa DEPOIS de outra coisa DENTRO DE algumas coisas.`
`INSIRA uma coisa ANTES de outra coisa DENTRO DE algumas coisas.`
`INSIRA algumas coisas DEPOIS de outras coisas DENTRO DE uma coisa.`
`INSIRA algumas coisas ANTES de outras coisas DENTRO DE uma coisa.`
`MOVA uma coisa DE algumas coisas PARA outras coisas.`
`MOVA algumas coisas PARA outras coisas.`
`ADICIONE uma coisa NO IN�CIO de algumas coisas.`
`ADICIONE algumas coisas NO IN�CIO de outras coisas.`
`REMOVA uma coisa DE outras coisas.`
`INVERTA algumas coisas.`

Existe tamb�m uma fun��o que permite que voc� "coloque a quantidade de algumas coisas" em uma contagem. Tudo o que voc� precisa lembrar � de CRIAR e DESTRUIR cada uma de suas coisas. Consulte "Gerenciamento de mem�ria" para mais informa��es.

