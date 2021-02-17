TIPOS PREDEFINIDOS

O compilador tabalha com 6 espécies de tipos de dados primitivos: BYTE, WYRD, NÚMERO, PONTEIRO, FLAG e RECORD.

Bytes. Bytes, como você já sabe, nada mais são do que 8 bits de dados binários sequenciais. O compilador trabalha no formato decimal, logo valor de um byte vai de 0 até 255. O compilador usa a tabela ASCII sempre que é necessário converter um byte para uma caractere.

Wyrds. As wyrds são necessárias para comunicação com o Windows/Processador. Eles têm 16 bits de comprimento sendo que o valor mínimo corresponde a -32768 e o valor máximo corresponde a +32767. Os bits dentro de cada byte são armazenados da esquerda para a direita, mas os bytes em si são armazenadas da direita pra esquerda. Infelizmente essa é uma das coisas que não é possível alterar.

Números. O compilador trabalha números inteiros. Ou seja, números positivos e negativos. Eles têm 32 bits de comprimento com o valor mínimo sendo -2147483648 e o valor máximo sendo +2147483647. São armazenados da direita para a esquerda.

Pointers. OS endereços de memória são armazenados em ponteiros de 32 bits de comprimento, da direita para a esquerda. Os ponteiros possuem o mesmo intervalo que os NÚMEROS inteiros, mas os números negativos são reservados para uso do Windows.
O endereço 0 é inválido e é chamado de NIL. Para fazer com que um ponteiro fique vazio (NIL) é só usar o comando ESVAZIAR.

Flags. Apesar de ocuparem 32 bits na memória apenas o bit mais significativo da direita é utilizado. Na verdade, são os 8 primeiros bits começando a partir da esquerda, mas na prática é como se fosse o que eu falei antes. Dessa forma, o valor 0 é interpretado como "não" ou "falso" e 1 como "sim" ou "verdadeiro". Qualquer outro valor é inválido. Você pode LIMPAR uma flag para indicar "não" ou DEFINIR uma flag para indicar "sim".

Records. O último dos meus tipos embutidos é o record. O protótipo inicial ocupa zero bits na memória, mas você pode definir records de qualquer comprimento adicionando "campos" para o registro protótipo. Estes campos podem ser baseados em qualquer um dos
tipos primitivos, incluindo outros records que você tenha definido anteriormente.

