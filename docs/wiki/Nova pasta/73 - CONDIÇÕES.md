CONDI��ES

Uma declara��o "condicional" � uma declara��o com duas partes. A primeira parte determina as condi��es sob as quais a segunda parte poder� ser executada. Aqui est�o alguns exemplos:

```
Se a coordenada n�o estiver dentro da caixa, alerte o usu�rio.
Se o n�mero for maior que 3, diga "Isso � muito"; saia.
Se o bot�o esquerdo do mouse estiver sendo pressionado, coloque a coordenada do ponteiro em uma coordenada; repita.
```

O formato geral �:

```
Se isso acontecer, fa�a isso; isto; aquilo.
```
A palavra SE � necess�ria. "Isso" representa uma chamada impl�cita para uma rotina decisora. Se a rotina retornar um "sim", todos os comandos ap�s a v�rgula ser�o executados. Se a rotina retornar um "n�o", o programa executar� a pr�xima linha.

Observe que os comandos imperativos nos comandos condicionais s�o separados por ponto e v�rgula, e n�o por pontos, porque o primeiro ponto encontrado indica o fim da instru��o.
A n�os er que o ponto esteja num coment�rio ou dentro de aspas duplas, � claro.

Observe tamb�m que se voc� utilizar palavras negativas na chamada impl�cita do decidor, essas palavras ser�o descartadas ou ser�o modificadas adequadamente. Nesse caso o decisor que ser� chamado � o que n�o cont�m as palavras negativas, a �nica coisa que acontece � que o valor de retorno dele ser� invertido. Por exemplo, digamos que voc� use o seguinte comando:

`Se a coordenada n�o estiver dentro da caixa, [...]`

Primeiramente, o compilador vai *descartar* o `n�o`. Logo em seguida, ele vai `decidir se a coordenada est� na caixa`. A resposta obtida ser� ent�o invertida (Se a resposta for `sim`, ent�o o retorno ser� um `n�o` e vice-versa). Eu sei que parece complicado, mas na verdade n�o �. E at� onde testamos, tem funcionado muito bem, j� que os decisores apenas retornam `sim` ou `n�o`. Consulte o t�pico `Decisores` para mais informa��es.

Por �ltimo, lembre-se: o compilador n�o aceita o aninhamento de declara��es condicionais. A filosofia da linguagem entende que esse tipo de declara��o acaba por ser sempre desnecess�rio (por poder ser expresso de outra forma) e quase sempre incerto (gerando resultados indesejados). N�o h� nenhuma declara��o condicional aninhada em todas as mais de 25 mil linhas de c�digo deste projeto. E se voc� parar pra pensar que este � o compilador de l�ngua portuguesa mais avan�ado do mundo, ver� que elas realmente n�o s�o nenhum pouco necess�rias. Na verdade, cada uma das declara��es condicionais do compilador cabe numa linha s�. Pense nisso.

