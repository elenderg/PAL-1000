PERCORREDORES

Antes de continuarmos com nosso programa, preciso tirar um momento e falar com você sobre análise sintática. Análise sintática é a arte de percorrer um grande bloco de texto um palavra por vez, onde essa palavra pode ser tão pequena quanto uma letra ou tão grande quanto o bloco inteiro. Vamos usar essa sequência de palavras abaixo como nosso exemplo de bloco de texto:
```
"OLÁ DOUTOR NOME CONTINUAR ONTEM AMANHÃ"

```
E digamos que queremos extrair cada uma dessas palavras de forma individual. As ferramentas que usaríamos são (1) o subtexto e (2) o percorredor.

Um "subpalavra" é definida no arquivo <code>o cérebro</code> como um subconjunto do tipo "texto", que tem dois ponteiros de byte chamados primeiro e último. E quando você "colocar uma subpalavra" no nosso texto de amostra, o compilador faz com que o primeiro byte aponte para o `O` na palavra `OLÁ` e o último byte aponte para `Ã` na palavra `AMANHÃ`.

No entanto, você será capaz de encontrar o "percorredor" no <code>o cérebro</code>. Ele consiste de três subtextos: um subtexto original, um subtexto fonte e um token. E quando você "colocar um percorredor" no nosso texto de amostra, o compilador pega o subtexto original e o subteto fonte no texto (como acima) e define o token como vazio. Então quando você usa o comando "mova o percorredor (regras de amostra)", o compilador aponta a letra `D` da palavra `DOUTOR` como primeiro byte do subtexto fonte. A letra `O` da palavra `OLÁ` é considerada como o primeiro byte do token, e a letra `Á` de `OLÁ` é considerada como o último byte do token. Quando você der novamente o comando, o percorredor se moverá para a próxima palara, sendo que a os bytes do token ficarão na palavra `DOUTOR` e a fonte ficará na letra `N` da palavra `NOME`.
Pegou a ideia? Excelente.

Agora aqui está a parte realmente estranha: você pode usar o precorredor para criar suas próprias rotinas e extrair qualquer tipo de dado de qualquer tipo de arquivo. `Mover um percorredor (regras do compilador)`, por exemplo, é a rotina que uso para analisar o código fonte do programa. `Mova um percorredor (regras de verificação ortográfica)` é utilizado para verificar a ortografia. Em breve, vamos programar a rotina `Mova um percorredor (Google Imagens)` para analisar os dados que vamos pegar da internet.

