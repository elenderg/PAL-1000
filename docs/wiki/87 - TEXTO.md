TEXTO

O compilador armazena "strings" em duas partes: um registro integrado que contém dois ponteiros de byte. O primeiro e o último. Além de armzenar os bytes de cada letra, assim:

`16 27 H E L L O W O R L D!`

```
primeiro último 161718192021222324252627
```

Os números do diagrama, caso você não tenha percebido, são apenas endereços fictícios. Um texto está em branco se o `primeiro ponteiro de byte` estiver vazio (sem memória alocada nele ainda), ou se o último ponteiro de byte for menor que o primeiro (o que permite a pré-alocação de memória). Observeque mesmo que a parte de dados de um texto seja dinamicamente alocada, você nunca tem que `criar` ou `destruir` a string. O compilador toma conta de tudo isso, assim você pode usar comandos como:

`COLOQUE algo EM um texto.`
`ADICIONE algo NO FINAL DE um texto`
`ADICIONE algo A um texto ANTES de um byte.`
`REMOVA O PRIMEIRO BYTE DE um texto.`
`REMOVA O ÚLTIMOO BYTE DE um texto.`
`PREENCHA um texto USANDO um byte A PARTIR DE uma contagem<.code>
`REMOVA OS BYTES INICIAIS DE um texto USANDO uma contagem.`
`REMOVA OS BYTES FINAIS DE um texto USANDO uma contagem.`
`REMOVA OS BYTES DE um texto USANDO um subtexto.`

Você também pode `COLOCAR TODO O TEXTO EM LETRAS MAIÚSCULAS`, `MINÚSCULAS`, ou `COLOCAR APENAS O PRIMEIRO BYTE EM LETRAS MAIÚSCULAS`. Além de obter o COMPRIMENTO de um texto, em bytes. Sem mencionar o comando:

`OBTENHA uma largura USANDO um texto E uma fonte.`

Além disso, você pode concatenar (unir, juntar) um texto com outro — ou com outros tipos de dados — usando os operadores ENTÃO, EM SEGUIDA ou JUNTO COM . Consulte o tópico "Expressões" para uma descrição da implementação dessa rotina.

