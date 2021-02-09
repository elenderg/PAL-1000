TIPOS

Um "tipo" é uma categoria ou espécie de coisa — um substantivo. Uma "instância" é uma coisa real de um tipo específico — um substantivo próprio. Globais, locais e parâmetros são instâncias concretas de tipos abstratos. Isso é o que o compilador entende sobre tipos:

Em primeiro lugar, existem seis tipos "embutidos" primitivos no meu compilador: BYTE, WYRD, NUMBER, POINTER, FLAG e RECORD. Consulte "Tipos Integrados".

Em seguida, há "subconjunto de tipos" que representam algumas das instâncias de algum outro tipo. O compilador, por exemplo, inclui muitos tipos de subconjunto, como estes:

```
Um número é contador.
Um nome é um texto.
```

Em terceiro lugar, o compilador reconhece "tipos de unidade de medida". Assim ele pode converter um tipo de unidade em outro. Exemplos:

```
Um pé tem 12 polegadas.
Uma hora é 60 minutos.
```

O compilador também entende tipos de "registro". Consulte a seção `Registros` para mais detalhes.

E não vamos nos esquecer dos "tipos de ponteiro", embora você raramente precise usá-los diretamente. O compilador sabe, por exemplo, que "um ponteiro de bytes é um ponteiro para um byte" e ele uso ponteiros de bytes para gerenciar suas strings. Consulte `Strings`, `Substrings`, `Percorredores`, e `Possessivos` para obter mais informações.

Por último, o compilador reconhece todos os tipos de "coisa". Existem várias no compilador, incluindo console, evento, imagem, polígono e vértice, todas elas são discutidas em outros lugares neste glossário. E também pode definir as suas próprias coisas. Consulte o tópico sobre `Coisas`, e tente se lembrar das "obras de arte" do programa de exemplo.

