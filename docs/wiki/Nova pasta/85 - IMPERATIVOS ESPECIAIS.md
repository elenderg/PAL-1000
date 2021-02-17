IMPERATIVOS ESPECIAIS

Os tr�s "imperativos especiais" do compilador provavelmente est�o mais para "imperativos usados para prop�sitos especiais". Talvez voc� chegue a usar um deles. Esperamos, em �ltima an�lise, elimin�-lo completamente. Os outros dois s�o para nerds.

Um imperativo de "emprego" deve ser a �nica declara��o em uma rotina. Esse tipo de imperativo faz com que o compilador utilize outra rotina no lugar da que foi chamada. S� funciona quando os par�metros de ambas as rotinas est�o na mesma ordem e s�o do mesmo tipo. Para encontrar exemplos, basta progurar por ": employ". Voc� pode dar mais de um nome para uma rotina, usando ponto e v�rgula no lugar de dois pontos, assim:

```
PARA limpar a tela; 
PARA apagar a tela; 
Para deixar a tela em branco: 
[c�digo aqui]
```
Um imperativo "push" avalia uma express�o e coloca o resultado � que deve ser um valor contendo um, dois ou quatro bytes � na pilha do sistema. Voc� provavelmente n�o vai precisar usar ele. Nem eu uso isso. Isso � um resqu�cio dos dias em que o comando CHAMAR ainda estava em desenvolvimento (Consulte o t�pico Windows para maiores informa��es sobre esse comando). S� pra voc� saber, o formato geral do comando �:

`PUSH uma express�o.`

Um imperativo "Intel" insere c�digo de m�quina no seu arquivo execut�vel. � poss�vel encontrar exemplos complexos em v�rios lugares do compilador. � uma pena que o Intel n�o � uma m�quina de pilha. O formato � trivial:

`INTEL nibble literal.`

Se voc� est� se perguntando por que raz�o o compilador n�o possui um assembler (montador) integrado, a resposta � simplesmente porque n�o � necess�rio. Na verdade, h� muito pouca linguagem da m�quina no meu compilador, e conforme novas fun��es v�o sendo adicionadas, mais e mais desses comandos v�o sendo substitu�dos por portugu�s simples. Al�m disso, um dos princ�pios dos Mestres da Sociedade Osmosiana � que o melhor assembler sempre foi e sempre ser� a sua cabe�a. � uma forma de manter seu c�rebro em dia.

