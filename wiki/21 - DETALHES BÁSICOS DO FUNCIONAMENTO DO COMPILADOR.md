﻿DETALHES BÁSICOS DO FUNCIONAMENTO DO COMPILADOR

Muito bem. Consulte aqui como é possível fazer tanto com tão pouco.

(1) O compilador só entende cinco tipos de expressões:

a) definições de tipo que sempre começam com `Um`, `Uma`, `Uns`, `Umas`, `Alguns` ou `Algumas`;
 (b) definições de variáveis globais, que sempre começam com `O`, `A`, `Os`, `As`;
 (c) prefixo de nomes de tarefas, que sempre começam com `Para`, `Para que`, `Para que se`;
 (d) instruções condicionais, que sempre começam com  `Se`; e
 (e) comandos imperativos, que começam com a palavra logo depois dos prefixos mencionados na letra  `c`.

(2) Qualquer coisa que vier depois de `Um`, `Uma`, `Uns`, `Umas`, `Alguns` ou `Algumas` `O`, `A`, `Os`, `As` é tratada como se fosse um substantivo. Eu também reconheço os seguintes  componentes gramaticais:

(a) verbos simples, como `SER`, `ESTAR`, `PODER`, ou `FAZER`, e suas respectivas conjugações;
 (b) conjunções, como `E`, `MAIS`, `COM`, `SEM`, `OU`, etc;
 (c) preposições e suas locuções, como `EM BAIXO`, `ABAIXO`, `EM CIMA`, `ACIMA`, `DENTRO`, `FORA`, etc;
 (d) qualquer literal, como `123` ou `"Olá, mundo!`, ou
 (e) qualquer sinal de pontuação.

(3) Eu considero quase todas as outras palavras como substantivos, exceto essas:

(a) operadores aritméticos: `MAIS`, `MENOS`, `VEZES`, `DIVIDIDO POR` e `JUNTO DE`;
 (b) palavras especiais de definição: `CHAMADO(A)` e `IGUAL`; e
 (c) imperativos: `PERCORRA`, `IGNORE`, `SAIA`, `REPITA` e `DIGA`.

Então você pode ver que o compilador é simples, mas poderoso. O compilador analisa frases da mesma maneira que alguém faria. Procurando por palavras especiais — artigos, verbos, conjunções, preposições — e depois correlaciona tudo. Sem utilizar gramáticas complicadas, nem árvore de análise sintática.

Mas há coisas que podem surpreendê-lo. Ou desafiá-lo. Ou te enfurecer.

