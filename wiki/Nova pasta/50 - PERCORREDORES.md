PERCORREDORES

Antes de continuarmos com nosso programa, preciso tirar um momento e falar com voc� sobre an�lise sint�tica. An�lise sint�tica � a arte de percorrer um grande bloco de texto um palavra por vez, onde essa palavra pode ser t�o pequena quanto uma letra ou t�o grande quanto o bloco inteiro. Vamos usar essa sequ�ncia de palavras abaixo como nosso exemplo de bloco de texto:
```
"OL� DOUTOR NOME CONTINUAR ONTEM AMANH�"

```
E digamos que queremos extrair cada uma dessas palavras de forma individual. As ferramentas que usar�amos s�o (1) o subtexto e (2) o percorredor.

Um "subpalavra" � definida no arquivo <code>o c�rebro</code> como um subconjunto do tipo "texto", que tem dois ponteiros de byte chamados primeiro e �ltimo. E quando voc� "colocar uma subpalavra" no nosso texto de amostra, o compilador faz com que o primeiro byte aponte para o `O` na palavra `OL�` e o �ltimo byte aponte para `�` na palavra `AMANH�`.

No entanto, voc� ser� capaz de encontrar o "percorredor" no <code>o c�rebro</code>. Ele consiste de tr�s subtextos: um subtexto original, um subtexto fonte e um token. E quando voc� "colocar um percorredor" no nosso texto de amostra, o compilador pega o subtexto original e o subteto fonte no texto (como acima) e define o token como vazio. Ent�o quando voc� usa o comando "mova o percorredor (regras de amostra)", o compilador aponta a letra `D` da palavra `DOUTOR` como primeiro byte do subtexto fonte. A letra `O` da palavra `OL�` � considerada como o primeiro byte do token, e a letra `�` de `OL�` � considerada como o �ltimo byte do token. Quando voc� der novamente o comando, o percorredor se mover� para a pr�xima palara, sendo que a os bytes do token ficar�o na palavra `DOUTOR` e a fonte ficar� na letra `N` da palavra `NOME`.
Pegou a ideia? Excelente.

Agora aqui est� a parte realmente estranha: voc� pode usar o precorredor para criar suas pr�prias rotinas e extrair qualquer tipo de dado de qualquer tipo de arquivo. `Mover um percorredor (regras do compilador)`, por exemplo, � a rotina que uso para analisar o c�digo fonte do programa. `Mova um percorredor (regras de verifica��o ortogr�fica)` � utilizado para verificar a ortografia. Em breve, vamos programar a rotina `Mova um percorredor (Google Imagens)` para analisar os dados que vamos pegar da internet.

