GERENCIAMENTO DE MEMÓRIA

O compiladorgerencia toda a memória necessária para os tipos de dados estáticos — como bytes, wyrds, números, ponteiros, bandeiras e a maioria dos registros. O compilador também gerencia as strings (texto), uma vez que elas são usadas com frequência e seu comportamento é previsível.

Mas quando você define um tipo dinâmico de dados, como uma "coisa", você se torna o único responsável por qualquer memória usada pelo tipo.

Normalmente, você vai programar uma rotina `CRIAR` para inicializar cada tipo dinâmico que você definir. Nessa rotina, você atribuirá memória para a coisa. O esquema de funcionamento é mostrado abaixo:

`ALOQUE MEMÓRIA PARA algo.`
`ALOJE MEMÓRIA PARA algo.`
`ATRIBUA MEMÓRIA PARA algo.`
`RESERVE MEMÓRIA PARA algo.`
`SEPARE MEMÓRIA PARA algo.` 

Você também pode codificar uma rotina DESTRUIR para cada tipo, com uma linha como:

`DESALOQUE A MEMÓRIA DE algo.`
`DESALOJE A MEMÓRIA DE algo.`
`REMOVA A MEMÓRIA DE algo.`
`LIMPE A MEMÓRIA DE algo.`
`ESVAZIE A MEMÓRIA DE algo.`

Mas se você não quiser, pode usar a rotina padrão do sistema. Apesar da rotina não ser ececutada automaticamente, ela existe, basta usar o comando certo. As rotinas `DESTRUA` que podem ser chamadas desta maneira:

`DESTRUA algo.`

Observe quea rotina `DESTRUA` não só destrói a coisa em si, mas também quaisquer outras coisas que estejam dentro da coisa, como campos e listas. A menos que, que você defina esses campos como "`(REFERÊNCIA)`".

Um bom exemplo pode ser encontrado no caderno onde uma "página" é definida como uma coisa com algumas "formas" nela. Voce encontrará rotinas que criam páginas e formas, mas não encontrará nenhuma rotina específica para destruí-las. Elas são parte do compilador. Entao, quando destruímos uma página, nós destruímos todas as formas dentro dela ao mesmo tempo. Exceto, é claro, para a "forma de edição", que é uma referência.

