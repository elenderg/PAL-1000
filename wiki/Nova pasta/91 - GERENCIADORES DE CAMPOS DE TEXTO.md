GERENCIADORES DE CAMPOS DE TEXTO

Conforme dito na p�gina anterior, o compilador gerencia a maior parte dos eventos ou comandos que s�o enviados ao campo de texto, desde que voc� use os comandos apropriados:

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
`GERENCIE um evento USANDO um campo de texto (tecla imprim�vel).`
`GERENCIE um evento USANDO um campo de texto (seta direita).`
`GERENCIE um evento USANDO um campo de texto (tecla tab).`
`GERENCIE um evento USANDO um campo de texto (seta para cima).`

Eu sei que pode parecer um inc�modo despachar todos estes eventos separadamente, mas � exatamente isso o que torna o campo de texto geralmente �til. Por exemplo:

Se voc� tiver uma caixa de texto com apenas uma linha, provavelmente vai querer ignorar e as teclas de seta para cima e para baixo, enquanto que se voc� usar caixas de texto com v�rias linhas voc� vai querer utilizar essas teclas para mover o cursor de texto.

Se voc� estiver usando uma caixa de texto como uma caixa de di�logo, voc� provavelmente cancelar� a opera��o quando a tecla <kbd>Esc</kbd> for pressionada, bem como voc� ir� querer executar a opera��o ao pressionar a tecla <kbd>Enter</kbd>. Em um campo de texto normal, provavelmente voc� utilizar� a tecla <kbd>Enter</kbd> para inserir uma quebra de linha por exemplo.

Entendeu o que eu quis dizer? Voc� est� no comando. Portanto, � voc� que tem que emitir as ordens.

