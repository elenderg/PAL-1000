PROCEDIMENTOS

Um "procedimento" � uma rotina que faz algo para voc�. Eis alguns cabe�alhos de procedimento de amostra:

`Para converter um n�mero em um texto:`
`Para centralizar uma caixa dentro de outra caixa (horizontalmente):`
`Para ocultar o cursor:` 

O formato geral �:

`PARA fazer alguma coisa:`

Os cabe�alhos de procedimento sempre come�am com a palavra `PARA`, e sempre terminam com de dois-pontos. O `alguma coisa` entre elas segue as regras normais para nomes de rotina.

O conte�do do `corpo` dos procedimentos s�o compostos por declara��es: condicionais e imperativas, incluindo os imperativos internos como `PRIVATIZE`, `PERCORRA`, `REPITA`, `PARE`, e `SAIA`. No entanto, n�o se pode utilizar os comandos `DIGA SIM` e `DIGA N�O` num procedimento.

O primeiro cabe�alho de amostra acima inclui um verbo, uma preposi��o e dois par�metros. O verbo � `converter` e a preposi��o � `em`. Os par�metros s�o `um n�mero` e `um texto`.

O segundo procedimento � parecido com o primeiro, mas existe um qualificador: "`(horizontalmente)`".

A terceira rotina � um verbo seguido de um substantivo: `o cursor`.

Quando um substantivo estiver acompanhado de um artigo definido em um cabe�alho de rotina, ele geralmente ser� interpretado como uma vari�vel global �nica, como por exemplo o comando `desenhe a barra` que est� dentro do arquivo `ambiente de trabalho`. Mas eles tamb�m podem ser utilizados para se referir a uma pseudo-vari�vel que n�o est� definida precisamente no seu c�digo. Como `o cursor` no exemplo acima, ou `o �ltimo byte` na rotina `remova o �ltimo byte de um texto`.

