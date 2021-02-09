VARI�VEIS LOCAIS

Uma "vari�vel local" � uma vari�vel que � propriedade privada de uma rotina. Vari�veis locais n�o podem ser vistas ou modificadas por qualquer outra rotina. A menos que, claro, voc� as passe para outras rotinas como par�metros.

O compilador cria uma nova c�pia de cada vari�vel local, a cada vez que uma rotina � chamada. A vari�vel � inicializada com o valor 0. O que significa que uma rotina pode chamar a si mesa e tudo ainda vai funcionar. Isto � chamado de "recurs�o", e se voc� n�o sabe o que isso significa, n�o precisa disso. O compilador se lira das vari�veis locais � medida que cada rotina � completada, para que elas n�o ocupem mem�ria � toa.

Voc� cria uma nova vari�vel local em uma rotina sempre que usa um artigo indefinido (`A`, `AN`, `ANOTHER` ou `SOME`) em um comando. Por exemplo:

`Coloque a localiza��o do mouse em outra localiza��o.`
`Coloque a coordenada esquerda da tela em uma coordenada esquerda da caixa.`
`Coloque 101 em outro n�mero de curso.`

No primeiro exemplo, a frase `uma localiza��o` faz com que eu fa�a uma nova vari�vel local chamada "a localiza��o". Em seguida, o compilador p�e a localiza��o atual do mouse na vari�vel.

O segundo exemplo coloca a coordenada esquerda da tela em uma nova coordenada esquerda da caixa. O restante das coordenadas da caixa � superior, direita e inferior � est�o definidas como zero.

O terceiro exemplo coloca um literal 101 em uma nova vari�vel local do tipo n�mero.
Esta vari�vel � definida com adjetivos anteriores ao nome do tipo, ent�o ela pode ser referenciada pelo seu nome completo, `O outro n�mero de curso`, ou por apelido, `o outro curso`. Voc� pode ler mais sobre nomes sob o t�pico `Nomes`.

Consulte tamb�m a p�gina `La�os`, onde uma vari�vel local e um decisor nos permite fazer `la�os contados` sem adicionar novas palavras-chave ao compilador.

