ROTINAS

Uma rotina � um peda�o de c�digo que manipula uma ou mais vari�veis em algumas formas bem definidas. As vari�veis passadas para uma rotina s�o chamadas de "par�metros", podendo ser apenas par�metros de entrada, par�metros de sa�da ou ambos. As vari�veis definidas dentro de uma rotina s�o chamadas de "vari�veis locaos" e n�o podem ser vistas fora da rotina (a menos que sejam passados como par�metros). As vari�veis que s�o acess�veis a todas as rotinas s�o chamadas de "vari�veis globais".

Cada rotina tem duas partes, cabe�alho e corpo. O cabe�alho diz o que a rotina faz e define os par�metros com os quais ele funciona. O corpo cont�m uma ou mais afirma��es que fazem a rotina realmente funcionar. Declara��es podem ser "condicionais" ou "imperativas". Existem tr�s tipos de rotinas.

Um "procedimento" � uma rotina que simplesmente faz algo � um procedimento pode ser longo ou curto, grande ou pequeno, f�cil ou dif�cil. Os cabe�alhos de procedimento sempre se parecem com isto:

```
PARA fazer alguma coisa:
```

Um "decisor" � uma rotina que diz "sim" ou "n�o" sobre algo, geralmente depois de examinar os par�metros passados para ele. Um cabe�alhos de decis�o � assim:

```
PARA DECIDIR SE alguma coisa:
```

Uma "fun��o" � uma rotina que extrai, calcula ou deriva algo usando uma vari�vel. Cabe�alhos de fun��o assumem este formato:

```
PARA POR algo QUE FAZ PARTE DE algo EM uma vari�vel tempor�ria:
```

Ao contr�rio dos procedimentos e dos decisores, as fun��es n�o s�o normalmente chamadas directamente.
Em vez disso, o "algo que faz parte de algo" � utilizado como se fosse um campo em um registro.
Como um "centro que est� dentro da caixa", que voc� n�o encontrar� no registro "caixa", porque ele � calculado por uma fun��o automaticamente.

