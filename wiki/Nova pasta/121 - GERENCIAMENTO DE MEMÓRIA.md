GERENCIAMENTO DE MEM�RIA

O compiladorgerencia toda a mem�ria necess�ria para os tipos de dados est�ticos � como bytes, wyrds, n�meros, ponteiros, bandeiras e a maioria dos registros. O compilador tamb�m gerencia as strings (texto), uma vez que elas s�o usadas com frequ�ncia e seu comportamento � previs�vel.

Mas quando voc� define um tipo din�mico de dados, como uma "coisa", voc� se torna o �nico respons�vel por qualquer mem�ria usada pelo tipo.

Normalmente, voc� vai programar uma rotina `CRIAR` para inicializar cada tipo din�mico que voc� definir. Nessa rotina, voc� atribuir� mem�ria para a coisa. O esquema de funcionamento � mostrado abaixo:

`ALOQUE MEM�RIA PARA algo.`
`ALOJE MEM�RIA PARA algo.`
`ATRIBUA MEM�RIA PARA algo.`
`RESERVE MEM�RIA PARA algo.`
`SEPARE MEM�RIA PARA algo.` 

Voc� tamb�m pode codificar uma rotina DESTRUIR para cada tipo, com uma linha como:

`DESALOQUE A MEM�RIA DE algo.`
`DESALOJE A MEM�RIA DE algo.`
`REMOVA A MEM�RIA DE algo.`
`LIMPE A MEM�RIA DE algo.`
`ESVAZIE A MEM�RIA DE algo.`

Mas se voc� n�o quiser, pode usar a rotina padr�o do sistema. Apesar da rotina n�o ser ececutada automaticamente, ela existe, basta usar o comando certo. As rotinas `DESTRUA` que podem ser chamadas desta maneira:

`DESTRUA algo.`

Observe quea rotina `DESTRUA` n�o s� destr�i a coisa em si, mas tamb�m quaisquer outras coisas que estejam dentro da coisa, como campos e listas. A menos que, que voc� defina esses campos como "`(REFER�NCIA)`".

Um bom exemplo pode ser encontrado no caderno onde uma "p�gina" � definida como uma coisa com algumas "formas" nela. Voce encontrar� rotinas que criam p�ginas e formas, mas n�o encontrar� nenhuma rotina espec�fica para destru�-las. Elas s�o parte do compilador. Entao, quando destru�mos uma p�gina, n�s destru�mos todas as formas dentro dela ao mesmo tempo. Exceto, � claro, para a "forma de edi��o", que � uma refer�ncia.

