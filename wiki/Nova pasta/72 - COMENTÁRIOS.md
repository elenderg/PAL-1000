COMENT�RIOS

Existem 3 tipos de coment�rios dispon�veis no compilador. Aqui est� uma descri��o exata de cada um.

Um "coment�rio" � qualquer coisa entre o uma barra invertida e o final de uma linha:

`\este � um coment�rio que termina com o byte CR`

O editor de texto exibe coment�rios na cor do azul claro para que sejam f�ceis de encontrar.
Caso voc� deseje alterar a cor dos coment�rios, ser� necess�rio recompilar o programa, mudando a seguinte linha de c�digo:
`Utilize a cor azul claro como cor dos coment�rios.`

Os coment�rios podem come�ar em qualquer lugar da linha, mas terminam quando a linha termina. No entanto, voc� pode incluir ou excluir blocos inteiros do c�digo selecionado usando os comandos `Comentar` e `Descomentar` no meu editor.

Existe outro tipo de coment�rio que � chamado de "observa��o. Ele n�o possui uma cor diferenciada nem � afetado pelos comandos mencionados acima. Exemplo:

`[ bytes imprim�veis ]`

Onde "imprim�vel" significa qualquer byte da tabela ASCII, exceto caracteres com valores de 0 a 31, o byte de exclus�o, e os bytes indefinidos 129, 141, 143, 144, 157.

Observa��es podem ser colocadas em qualquer lugar, mesmo no meio de uma frase. Mas a fim de evitar erros, as observa��es tamb�m n�o podem ocupar mais de uma linha. Conforme dito antes, elas n�o s�o real�adas. Ent�o use como observa��o e n�o como coment�rio.

O termo "ru�do", se refere a todos os caracteres da tabela ASCII cujo valor esteja entre 0 e 31, o byte de espa�o, o byte de exclus�o, os bytes indefinidos 129, 141, 143, 144, 157, e o byte de espa�o r�gido. O compilador reconhece estes bytes como separadores, claro, mas, fora isso, n�o faz nada com eles.

