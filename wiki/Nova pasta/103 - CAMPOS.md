CAMPOS

Um *record* � uma cole��o de itens que cont�m dados intimamente relacionados. Cada item � considerado um "campo". Campos s�o definidos como parte do record que os cont�m, e podem ser separada por v�rgulas, ponto e v�rgula ou pelas palavras `E` e `OU`. Consulte o exemplo abaixo:

```
Uma pessoa � algo com 
um nome e
um endere�o postal;
um byte chamado g�nero ou
um byte chamado sexo no g�nero;
32 bytes, e
um c�njuge (refer�ncia).
```

O primeiro campo � definido com apenas um artigo indefinido,` UM` e um tipo, `NOME`. Pense neste campo como `o nome da pessoa`.

O segundo campo inclui um `ENDERE�O POSTAL`, que � nada mais do que uma vari�vel do tipo `texto`. Logo, em algum lugar do seu c�digo voc� precisar� acrescentar a defini��o:

`Um endere�o postal � um texto`.

O terceiro campo � definido da mesma forma que o primeiro campo, mas com um nome imposto a ele devido a cl�usula `CHAMADO`. Esse campo � o `g�nero da pessoa`. Normalmente, voc� s� usar� esssa forma quando o tipo de um campo n�o tiver nada a ver com o nome do tipo (Ningu�m costuma pensar em g�nero em termos de bytes).

O quarto campo usa a palavra chave `NO` para redefinir o terceiro campo, dando-lhe um novo nome. Asobreposi��o de tipos de dados deve ser compat�vel para que coisas como esta funcionem.

O quinto campo � enchimento. Ele n�o tem nome e n�o pode ser acessado diretamente.

O �ltimo campo � parecido com o segundo, onde se assume que a vari�vel `C�NJUGE` � um tipo definido em outro lugar. A tag `(REFER�NCIA)` serve para informar que o termo `C�NJUGE` n�o faz "parte" da pessoa e n�o deve ser destru�do automaticamente quando a pessoa for.

