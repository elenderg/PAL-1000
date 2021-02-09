CONDIÇÕES

Uma declaração "condicional" é uma declaração com duas partes. A primeira parte determina as condições sob as quais a segunda parte poderá ser executada. Aqui estão alguns exemplos:

```
Se a coordenada não estiver dentro da caixa, alerte o usuário.
Se o número for maior que 3, diga "Isso é muito"; saia.
Se o botão esquerdo do mouse estiver sendo pressionado, coloque a coordenada do ponteiro em uma coordenada; repita.
```

O formato geral é:

```
Se isso acontecer, faça isso; isto; aquilo.
```
A palavra SE é necessária. "Isso" representa uma chamada implícita para uma rotina decisora. Se a rotina retornar um "sim", todos os comandos após a vírgula serão executados. Se a rotina retornar um "não", o programa executará a próxima linha.

Observe que os comandos imperativos nos comandos condicionais são separados por ponto e vírgula, e não por pontos, porque o primeiro ponto encontrado indica o fim da instrução.
A nãos er que o ponto esteja num comentário ou dentro de aspas duplas, é claro.

Observe também que se você utilizar palavras negativas na chamada implícita do decidor, essas palavras serão descartadas ou serão modificadas adequadamente. Nesse caso o decisor que será chamado é o que não contém as palavras negativas, a única coisa que acontece é que o valor de retorno dele será invertido. Por exemplo, digamos que você use o seguinte comando:

`Se a coordenada não estiver dentro da caixa, [...]`

Primeiramente, o compilador vai *descartar* o `não`. Logo em seguida, ele vai `decidir se a coordenada está na caixa`. A resposta obtida será então invertida (Se a resposta for `sim`, então o retorno será um `não` e vice-versa). Eu sei que parece complicado, mas na verdade não é. E até onde testamos, tem funcionado muito bem, já que os decisores apenas retornam `sim` ou `não`. Consulte o tópico `Decisores` para mais informações.

Por último, lembre-se: o compilador não aceita o aninhamento de declarações condicionais. A filosofia da linguagem entende que esse tipo de declaração acaba por ser sempre desnecessário (por poder ser expresso de outra forma) e quase sempre incerto (gerando resultados indesejados). Não há nenhuma declaração condicional aninhada em todas as mais de 25 mil linhas de código deste projeto. E se você parar pra pensar que este é o compilador de língua portuguesa mais avançado do mundo, verá que elas realmente não são nenhum pouco necessárias. Na verdade, cada uma das declarações condicionais do compilador cabe numa linha só. Pense nisso.

