﻿VARIÁVEIS GLOBAIS

Uma variável "global" é uma variável que é visível para todas as rotinas, e que portanto pode ser usada por qualquer rotina em um programa. As variáveis globais podem ser definidos através de várias maneiras, mas suas definições sempre começam com um artigo definido (`O`, `A`, `OS`, `AS`). Eis alguns exemplos:

```
A seta do mouse é um cursor.
A tecla backspace é uma tecla igual a 8.
O maior número é [um número igual a] 2147483647.
```
A `seta do mouse ` será inicializado com o valor 0 (indefinido). A `tecla backspace ` foi inicializada com um tipo explícito (`tecla`) e com o valor `8`. A terceira variável usa um tipo implícito (colocado em colchetes como observação). Portanto, as formas gerais são:

```
O *nome da variável aqui* É UM *nome de tipo da variável aqui*.
O *nome da variável aqui* É UM *nome de tipo da variável aqui*IGUAL A *valor da variável aqui*.
O *nome da variável aqui* É *valor da variável aqui*.
```

Uma variável global "única" é um tipo especial de variável global que inclui a definição de de um tipo dentro dela. Exemplo:

```
O mouse tem uma tecla chamada botão esquerdo e uma tecla chamada botão direito.
```

Como só existe um mouse, não há necessidade de definir um registro chamado `mouse`. Em vez disso, a variável global e seu tipo podem ser definidos em uma única linha.
Há duas formas que podem ser utilizadas para definir uma variável global de tipo único. A primeira cria um novo tipo de registro, enquanto a segunda estende um registro já existente:

```
O *insira o nome da variável aqui* TEM *insira os campos aqui*.
O *insira o nome da variável aqui* É UM *insira o tipo da variável aqui* COM *insira os campos aqui*.
```

Uma variável global única é algo raro. Provavelmente porque são únicas.
Mas respondem à velha pergunta "Quem veio primeiro, o ovo ou a galinha?". A galinha, claro.

