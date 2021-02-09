FUNÇÕES

Uma "função" é uma rotina que extrai, calcula ou deriva algo usando uma variável. Alguns exemplos são:

```
Para colocar a linha inferior de uma caixa em uma linha:
Para colocar a altura de um polígono em uma altura:
Para colocar a posição do mouse em uma posição:
```

Há dois formatos muito semelhantes para funções. O primeiro é:

```
PARA COLOCAR UM nome DO tipo EM um nome DE tipo:
```

E o segundo é:

```
PARA COLOCAR UM nome DO nome EM um nome DE tipo:
```

Ambas as formas são facilmente reconhecidas porque elas incluem as palavras `COLOCAR` e `EM` com um `possessivo` entre elas. O primeiro formato é o mais comum e é usado com tipos e variáveis normais. O segundo é usado com variáveis únicas globais e pseudo-variáveis.

O que é especial sobre funções é que você pode usar suas partes possessivas como se elas fizerem referência a campos reais em um registro. Por exemplo, dadas as funções acima, você pode obter a `linha inferior da caixa` como se ela já tivesse sido definida no tipo de registro da caixa. Você pode solicitar `a altura do polígono` e veremos que ela é calculada quando você precisar. E você pode dizer `a localização do mouse` e  o compilador busca a lozalização para você, mesmo que a variável mouse não tenha nenhum item `localização` dentro dela.

Nem preciso dizer o quão útil é essa função. Mas tente não abusar dela. Seja sábio.

Consulte o tópico `Possessivos` para mais informações.

