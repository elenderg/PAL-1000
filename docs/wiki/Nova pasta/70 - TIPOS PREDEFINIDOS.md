TIPOS PREDEFINIDOS

O compilador tabalha com 6 esp�cies de tipos de dados primitivos: BYTE, WYRD, N�MERO, PONTEIRO, FLAG e RECORD.

Bytes. Bytes, como voc� j� sabe, nada mais s�o do que 8 bits de dados bin�rios sequenciais. O compilador trabalha no formato decimal, logo valor de um byte vai de 0 at� 255. O compilador usa a tabela ASCII sempre que � necess�rio converter um byte para uma caractere.

Wyrds. As wyrds s�o necess�rias para comunica��o com o Windows/Processador. Eles t�m 16 bits de comprimento sendo que o valor m�nimo corresponde a -32768 e o valor m�ximo corresponde a +32767. Os bits dentro de cada byte s�o armazenados da esquerda para a direita, mas os bytes em si s�o armazenadas da direita pra esquerda. Infelizmente essa � uma das coisas que n�o � poss�vel alterar.

N�meros. O compilador trabalha n�meros inteiros. Ou seja, n�meros positivos e negativos. Eles t�m 32 bits de comprimento com o valor m�nimo sendo -2147483648 e o valor m�ximo sendo +2147483647. S�o armazenados da direita para a esquerda.

Pointers. OS endere�os de mem�ria s�o armazenados em ponteiros de 32 bits de comprimento, da direita para a esquerda. Os ponteiros possuem o mesmo intervalo que os N�MEROS inteiros, mas os n�meros negativos s�o reservados para uso do Windows.
O endere�o 0 � inv�lido e � chamado de NIL. Para fazer com que um ponteiro fique vazio (NIL) � s� usar o comando ESVAZIAR.

Flags. Apesar de ocuparem 32 bits na mem�ria apenas o bit mais significativo da direita � utilizado. Na verdade, s�o os 8 primeiros bits come�ando a partir da esquerda, mas na pr�tica � como se fosse o que eu falei antes. Dessa forma, o valor 0 � interpretado como "n�o" ou "falso" e 1 como "sim" ou "verdadeiro". Qualquer outro valor � inv�lido. Voc� pode LIMPAR uma flag para indicar "n�o" ou DEFINIR uma flag para indicar "sim".

Records. O �ltimo dos meus tipos embutidos � o record. O prot�tipo inicial ocupa zero bits na mem�ria, mas voc� pode definir records de qualquer comprimento adicionando "campos" para o registro prot�tipo. Estes campos podem ser baseados em qualquer um dos
tipos primitivos, incluindo outros records que voc� tenha definido anteriormente.

