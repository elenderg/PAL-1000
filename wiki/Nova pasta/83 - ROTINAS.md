ROTINAS

Uma rotina é um pedaço de código que manipula uma ou mais variáveis em algumas formas bem definidas. As variáveis passadas para uma rotina são chamadas de "parâmetros", podendo ser apenas parâmetros de entrada, parâmetros de saída ou ambos. As variáveis definidas dentro de uma rotina são chamadas de "variáveis locaos" e não podem ser vistas fora da rotina (a menos que sejam passados como parâmetros). As variáveis que são acessíveis a todas as rotinas são chamadas de "variáveis globais".

Cada rotina tem duas partes, cabeçalho e corpo. O cabeçalho diz o que a rotina faz e define os parâmetros com os quais ele funciona. O corpo contém uma ou mais afirmações que fazem a rotina realmente funcionar. Declarações podem ser "condicionais" ou "imperativas". Existem três tipos de rotinas.

Um "procedimento" é uma rotina que simplesmente faz algo — um procedimento pode ser longo ou curto, grande ou pequeno, fácil ou difícil. Os cabeçalhos de procedimento sempre se parecem com isto:

```
PARA fazer alguma coisa:
```

Um "decisor" é uma rotina que diz "sim" ou "não" sobre algo, geralmente depois de examinar os parâmetros passados para ele. Um cabeçalhos de decisão é assim:

```
PARA DECIDIR SE alguma coisa:
```

Uma "função" é uma rotina que extrai, calcula ou deriva algo usando uma variável. Cabeçalhos de função assumem este formato:

```
PARA POR algo QUE FAZ PARTE DE algo EM uma variável temporária:
```

Ao contrário dos procedimentos e dos decisores, as funções não são normalmente chamadas directamente.
Em vez disso, o "algo que faz parte de algo" é utilizado como se fosse um campo em um registro.
Como um "centro que está dentro da caixa", que você não encontrará no registro "caixa", porque ele é calculado por uma função automaticamente.

