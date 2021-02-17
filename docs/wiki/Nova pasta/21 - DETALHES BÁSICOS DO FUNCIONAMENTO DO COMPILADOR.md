DETALHES B�SICOS DO FUNCIONAMENTO DO COMPILADOR

Muito bem. Consulte aqui como � poss�vel fazer tanto com t�o pouco.

(1) O compilador s� entende cinco tipos de express�es:

a) defini��es de tipo que sempre come�am com `Um`, `Uma`, `Uns`, `Umas`, `Alguns` ou `Algumas`;
 (b) defini��es de vari�veis globais, que sempre come�am com `O`, `A`, `Os`, `As`;
 (c) prefixo de nomes de tarefas, que sempre come�am com `Para`, `Para que`, `Para que se`;
 (d) instru��es condicionais, que sempre come�am com  `Se`; e
 (e) comandos imperativos, que come�am com a palavra logo depois dos prefixos mencionados na letra  `c`.

(2) Qualquer coisa que vier depois de `Um`, `Uma`, `Uns`, `Umas`, `Alguns` ou `Algumas` `O`, `A`, `Os`, `As` � tratada como se fosse um substantivo. Eu tamb�m reconhe�o os seguintes  componentes gramaticais:

(a) verbos simples, como `SER`, `ESTAR`, `PODER`, ou `FAZER`, e suas respectivas conjuga��es;
 (b) conjun��es, como `E`, `MAIS`, `COM`, `SEM`, `OU`, etc;
 (c) preposi��es e suas locu��es, como `EM BAIXO`, `ABAIXO`, `EM CIMA`, `ACIMA`, `DENTRO`, `FORA`, etc;
 (d) qualquer literal, como `123` ou `"Ol�, mundo!`, ou
 (e) qualquer sinal de pontua��o.

(3) Eu considero quase todas as outras palavras como substantivos, exceto essas:

(a) operadores aritm�ticos: `MAIS`, `MENOS`, `VEZES`, `DIVIDIDO POR` e `JUNTO DE`;
 (b) palavras especiais de defini��o: `CHAMADO(A)` e `IGUAL`; e
 (c) imperativos: `PERCORRA`, `IGNORE`, `SAIA`, `REPITA` e `DIGA`.

Ent�o voc� pode ver que o compilador � simples, mas poderoso. O compilador analisa frases da mesma maneira que algu�m faria. Procurando por palavras especiais � artigos, verbos, conjun��es, preposi��es � e depois correlaciona tudo. Sem utilizar gram�ticas complicadas, nem �rvore de an�lise sint�tica.

Mas h� coisas que podem surpreend�-lo. Ou desafi�-lo. Ou te enfurecer.

