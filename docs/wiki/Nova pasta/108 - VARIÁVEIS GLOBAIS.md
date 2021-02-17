VARI�VEIS GLOBAIS

Uma vari�vel "global" � uma vari�vel que � vis�vel para todas as rotinas, e que portanto pode ser usada por qualquer rotina em um programa. As vari�veis globais podem ser definidos atrav�s de v�rias maneiras, mas suas defini��es sempre come�am com um artigo definido (`O`, `A`, `OS`, `AS`). Eis alguns exemplos:

```
A seta do mouse � um cursor.
A tecla backspace � uma tecla igual a 8.
O maior n�mero � [um n�mero igual a] 2147483647.
```
A `seta do mouse ` ser� inicializado com o valor 0 (indefinido). A `tecla backspace ` foi inicializada com um tipo expl�cito (`tecla`) e com o valor `8`. A terceira vari�vel usa um tipo impl�cito (colocado em colchetes como observa��o). Portanto, as formas gerais s�o:

```
O *nome da vari�vel aqui* � UM *nome de tipo da vari�vel aqui*.
O *nome da vari�vel aqui* � UM *nome de tipo da vari�vel aqui*IGUAL A *valor da vari�vel aqui*.
O *nome da vari�vel aqui* � *valor da vari�vel aqui*.
```

Uma vari�vel global "�nica" � um tipo especial de vari�vel global que inclui a defini��o de de um tipo dentro dela. Exemplo:

```
O mouse tem uma tecla chamada bot�o esquerdo e uma tecla chamada bot�o direito.
```

Como s� existe um mouse, n�o h� necessidade de definir um registro chamado `mouse`. Em vez disso, a vari�vel global e seu tipo podem ser definidos em uma �nica linha.
H� duas formas que podem ser utilizadas para definir uma vari�vel global de tipo �nico. A primeira cria um novo tipo de registro, enquanto a segunda estende um registro j� existente:

```
O *insira o nome da vari�vel aqui* TEM *insira os campos aqui*.
O *insira o nome da vari�vel aqui* � UM *insira o tipo da vari�vel aqui* COM *insira os campos aqui*.
```

Uma vari�vel global �nica � algo raro. Provavelmente porque s�o �nicas.
Mas respondem � velha pergunta "Quem veio primeiro, o ovo ou a galinha?". A galinha, claro.

