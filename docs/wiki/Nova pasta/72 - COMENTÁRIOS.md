COMENTÁRIOS

Existem 3 tipos de comentários disponíveis no compilador. Aqui está uma descrição exata de cada um.

Um "comentário" é qualquer coisa entre o uma barra invertida e o final de uma linha:

`\este é um comentário que termina com o byte CR`

O editor de texto exibe comentários na cor do azul claro para que sejam fáceis de encontrar.
Caso você deseje alterar a cor dos comentários, será necessário recompilar o programa, mudando a seguinte linha de código:
`Utilize a cor azul claro como cor dos comentários.`

Os comentários podem começar em qualquer lugar da linha, mas terminam quando a linha termina. No entanto, você pode incluir ou excluir blocos inteiros do código selecionado usando os comandos `Comentar` e `Descomentar` no meu editor.

Existe outro tipo de comentário que é chamado de "observação. Ele não possui uma cor diferenciada nem é afetado pelos comandos mencionados acima. Exemplo:

`[ bytes imprimíveis ]`

Onde "imprimível" significa qualquer byte da tabela ASCII, exceto caracteres com valores de 0 a 31, o byte de exclusão, e os bytes indefinidos 129, 141, 143, 144, 157.

Observações podem ser colocadas em qualquer lugar, mesmo no meio de uma frase. Mas a fim de evitar erros, as observações também não podem ocupar mais de uma linha. Conforme dito antes, elas não são realçadas. Então use como observação e não como comentário.

O termo "ruído", se refere a todos os caracteres da tabela ASCII cujo valor esteja entre 0 e 31, o byte de espaço, o byte de exclusão, os bytes indefinidos 129, 141, 143, 144, 157, e o byte de espaço rígido. O compilador reconhece estes bytes como separadores, claro, mas, fora isso, não faz nada com eles.

