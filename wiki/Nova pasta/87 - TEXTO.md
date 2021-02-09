TEXTO

O compilador armazena "strings" em duas partes: um registro integrado que cont�m dois ponteiros de byte. O primeiro e o �ltimo. Al�m de armzenar os bytes de cada letra, assim:

`16 27 H E L L O W O R L D!`

```
primeiro �ltimo 161718192021222324252627
```

Os n�meros do diagrama, caso voc� n�o tenha percebido, s�o apenas endere�os fict�cios. Um texto est� em branco se o `primeiro ponteiro de byte` estiver vazio (sem mem�ria alocada nele ainda), ou se o �ltimo ponteiro de byte for menor que o primeiro (o que permite a pr�-aloca��o de mem�ria). Observeque mesmo que a parte de dados de um texto seja dinamicamente alocada, voc� nunca tem que `criar` ou `destruir` a string. O compilador toma conta de tudo isso, assim voc� pode usar comandos como:

`COLOQUE algo EM um texto.`
`ADICIONE algo NO FINAL DE um texto`
`ADICIONE algo A um texto ANTES de um byte.`
`REMOVA O PRIMEIRO BYTE DE um texto.`
`REMOVA O �LTIMOO BYTE DE um texto.`
`PREENCHA um texto USANDO um byte A PARTIR DE uma contagem<.code>
`REMOVA OS BYTES INICIAIS DE um texto USANDO uma contagem.`
`REMOVA OS BYTES FINAIS DE um texto USANDO uma contagem.`
`REMOVA OS BYTES DE um texto USANDO um subtexto.`

Voc� tamb�m pode `COLOCAR TODO O TEXTO EM LETRAS MAI�SCULAS`, `MIN�SCULAS`, ou `COLOCAR APENAS O PRIMEIRO BYTE EM LETRAS MAI�SCULAS`. Al�m de obter o COMPRIMENTO de um texto, em bytes. Sem mencionar o comando:

`OBTENHA uma largura USANDO um texto E uma fonte.`

Al�m disso, voc� pode concatenar (unir, juntar) um texto com outro � ou com outros tipos de dados � usando os operadores ENT�O, EM SEGUIDA ou JUNTO COM . Consulte o t�pico "Express�es" para uma descri��o da implementa��o dessa rotina.

