﻿CAMPOS

Um *record* é uma coleção de itens que contém dados intimamente relacionados. Cada item é considerado um "campo". Campos são definidos como parte do record que os contém, e podem ser separada por vírgulas, ponto e vírgula ou pelas palavras `E` e `OU`. Consulte o exemplo abaixo:

```
Uma pessoa é algo com 
um nome e
um endereço postal;
um byte chamado gênero ou
um byte chamado sexo no gênero;
32 bytes, e
um cônjuge (referência).
```

O primeiro campo é definido com apenas um artigo indefinido,` UM` e um tipo, `NOME`. Pense neste campo como `o nome da pessoa`.

O segundo campo inclui um `ENDEREÇO POSTAL`, que é nada mais do que uma variável do tipo `texto`. Logo, em algum lugar do seu código você precisará acrescentar a definição:

`Um endereço postal é um texto`.

O terceiro campo é definido da mesma forma que o primeiro campo, mas com um nome imposto a ele devido a cláusula `CHAMADO`. Esse campo é o `gênero da pessoa`. Normalmente, você só usará esssa forma quando o tipo de um campo não tiver nada a ver com o nome do tipo (Ninguém costuma pensar em gênero em termos de bytes).

O quarto campo usa a palavra chave `NO` para redefinir o terceiro campo, dando-lhe um novo nome. Asobreposição de tipos de dados deve ser compatível para que coisas como esta funcionem.

O quinto campo é enchimento. Ele não tem nome e não pode ser acessado diretamente.

O último campo é parecido com o segundo, onde se assume que a variável `CÔNJUGE` é um tipo definido em outro lugar. A tag `(REFERÊNCIA)` serve para informar que o termo `CÔNJUGE` não faz "parte" da pessoa e não deve ser destruído automaticamente quando a pessoa for.

