GERENCIADORES DE CAMPOS DE TEXTO

Conforme dito na página anterior, o compilador gerencia a maior parte dos eventos ou comandos que são enviados ao campo de texto, desde que você use os comandos apropriados:

`GERENCIE um evento USANDO um campo de texto (tecla backspace).`
`GERENCIE um evento USANDO um campo de texto (tecla delete).`
`GERENCIE um evento USANDO um campo de texto (tecla seta para baixo).`
`GERENCIE um evento USANDO um campo de texto (tecla end).`
`GERENCIE um evento USANDO um campo de texto (tecla enter).`
`GERENCIE um evento USANDO um campo de texto (tecla esc).`
`GERENCIE um evento USANDO um campo de texto (tecla home).`
`GERENCIE um evento USANDO um campo de texto (clique duplo).`
`GERENCIE um evento USANDO um campo de texto (seta esquerda).`
`GERENCIE um evento USANDO um campo de texto (tecla page down).`
`GERENCIE um evento USANDO um campo de texto (tecla page up).`
`GERENCIE um evento USANDO um campo de texto (tecla imprimível).`
`GERENCIE um evento USANDO um campo de texto (seta direita).`
`GERENCIE um evento USANDO um campo de texto (tecla tab).`
`GERENCIE um evento USANDO um campo de texto (seta para cima).`

Eu sei que pode parecer um incômodo despachar todos estes eventos separadamente, mas é exatamente isso o que torna o campo de texto geralmente útil. Por exemplo:

Se você tiver uma caixa de texto com apenas uma linha, provavelmente vai querer ignorar e as teclas de seta para cima e para baixo, enquanto que se você usar caixas de texto com várias linhas você vai querer utilizar essas teclas para mover o cursor de texto.

Se você estiver usando uma caixa de texto como uma caixa de diálogo, você provavelmente cancelará a operação quando a tecla <kbd>Esc</kbd> for pressionada, bem como você irá querer executar a operação ao pressionar a tecla <kbd>Enter</kbd>. Em um campo de texto normal, provavelmente você utilizará a tecla <kbd>Enter</kbd> para inserir uma quebra de linha por exemplo.

Entendeu o que eu quis dizer? Você está no comando. Portanto, é você que tem que emitir as ordens.

