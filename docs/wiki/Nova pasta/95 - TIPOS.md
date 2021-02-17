TIPOS

Um "tipo" � uma categoria ou esp�cie de coisa � um substantivo. Uma "inst�ncia" � uma coisa real de um tipo espec�fico � um substantivo pr�prio. Globais, locais e par�metros s�o inst�ncias concretas de tipos abstratos. Isso � o que o compilador entende sobre tipos:

Em primeiro lugar, existem seis tipos "embutidos" primitivos no meu compilador: BYTE, WYRD, NUMBER, POINTER, FLAG e RECORD. Consulte "Tipos Integrados".

Em seguida, h� "subconjunto de tipos" que representam algumas das inst�ncias de algum outro tipo. O compilador, por exemplo, inclui muitos tipos de subconjunto, como estes:

```
Um n�mero � contador.
Um nome � um texto.
```

Em terceiro lugar, o compilador reconhece "tipos de unidade de medida". Assim ele pode converter um tipo de unidade em outro. Exemplos:

```
Um p� tem 12 polegadas.
Uma hora � 60 minutos.
```

O compilador tamb�m entende tipos de "registro". Consulte a se��o `Registros` para mais detalhes.

E n�o vamos nos esquecer dos "tipos de ponteiro", embora voc� raramente precise us�-los diretamente. O compilador sabe, por exemplo, que "um ponteiro de bytes � um ponteiro para um byte" e ele uso ponteiros de bytes para gerenciar suas strings. Consulte `Strings`, `Substrings`, `Percorredores`, e `Possessivos` para obter mais informa��es.

Por �ltimo, o compilador reconhece todos os tipos de "coisa". Existem v�rias no compilador, incluindo console, evento, imagem, pol�gono e v�rtice, todas elas s�o discutidas em outros lugares neste gloss�rio. E tamb�m pode definir as suas pr�prias coisas. Consulte o t�pico sobre `Coisas`, e tente se lembrar das "obras de arte" do programa de exemplo.

