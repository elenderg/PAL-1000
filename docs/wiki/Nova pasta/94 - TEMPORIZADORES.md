TEMPORIZADORES

Um tique dura aproximadamente 1 milissegundo. "A contagem de tiques do sistema" � o n�mero de milissegundos desde a �ltima reinicializa��o. Ele reseta a cada 24,8 dias aproximadamente.
O que se passa nessa altura � desconhecido,j� que nenhum Windows ficou tanto tempo ligado sem dar pau.

Quando quiser, voc� pode:

```
AGUARDAR tantos milissegundos.
```

O compilador tamb�m entende unidades maiores como "minutos" ou "segundos".

O compilador possui uma vari�vel chamada de temporizador que permite que voc� utilize os seguintes comandos:

```
ZERE o temporizador.
REINICIE um temporizador.
INICIE um temporizador.
PARE um temporizador.
```
```` 
REINICIE um temporizador.
INICIE um temporizador.
PARE um temporizador.
```
O compilador utiliza esses cron�metros para verificar o tempo de recompila��o, por exemplo (que atualmente � cerca de 3 segundos, dependendo do hardware).
Procure a se��o `listagem` para ver todos os temporizadores. Voc� pode us�-los para tornar seus programas mais r�pidos.

Os tempos podem ser cronometrados simplesmente inserindo os comandos `inicie um temporizador` e `pare o temporizador` nos pontos apropriados no seu c�digo.

Tempos cumulativos podem ser acumulados usando o comando `zerar` uma vez e `reiniciar` logo em seguida juntamente com o comando "parar".

Existe uma fun��o no compilador que permite que voc� obtenha o texto de um temporizador a qualquer momento � mesmo durante sua execu��o. Voc� tamb�m pode utilizar as opera��es de concatena��o de strings neles.

