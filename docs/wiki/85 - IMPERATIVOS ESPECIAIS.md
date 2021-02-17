﻿IMPERATIVOS ESPECIAIS

Os três "imperativos especiais" do compilador provavelmente estão mais para "imperativos usados para propósitos especiais". Talvez você chegue a usar um deles. Esperamos, em última análise, eliminá-lo completamente. Os outros dois são para nerds.

Um imperativo de "emprego" deve ser a única declaração em uma rotina. Esse tipo de imperativo faz com que o compilador utilize outra rotina no lugar da que foi chamada. Só funciona quando os parâmetros de ambas as rotinas estão na mesma ordem e são do mesmo tipo. Para encontrar exemplos, basta progurar por ": employ". Você pode dar mais de um nome para uma rotina, usando ponto e vírgula no lugar de dois pontos, assim:

```
PARA limpar a tela; 
PARA apagar a tela; 
Para deixar a tela em branco: 
[código aqui]
```
Um imperativo "push" avalia uma expressão e coloca o resultado — que deve ser um valor contendo um, dois ou quatro bytes — na pilha do sistema. Você provavelmente não vai precisar usar ele. Nem eu uso isso. Isso é um resquício dos dias em que o comando CHAMAR ainda estava em desenvolvimento (Consulte o tópico Windows para maiores informações sobre esse comando). Só pra você saber, o formato geral do comando é:

`PUSH uma expressão.`

Um imperativo "Intel" insere código de máquina no seu arquivo executável. É possível encontrar exemplos complexos em vários lugares do compilador. É uma pena que o Intel não é uma máquina de pilha. O formato é trivial:

`INTEL nibble literal.`

Se você está se perguntando por que razão o compilador não possui um assembler (montador) integrado, a resposta é simplesmente porque não é necessário. Na verdade, há muito pouca linguagem da máquina no meu compilador, e conforme novas funções vão sendo adicionadas, mais e mais desses comandos vão sendo substituídos por português simples. Além disso, um dos princípios dos Mestres da Sociedade Osmosiana é que o melhor assembler sempre foi e sempre será a sua cabeça. É uma forma de manter seu cérebro em dia.

