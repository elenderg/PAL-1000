TEMPORIZADORES

Um tique dura aproximadamente 1 milissegundo. "A contagem de tiques do sistema" é o número de milissegundos desde a última reinicialização. Ele reseta a cada 24,8 dias aproximadamente.
O que se passa nessa altura é desconhecido,já que nenhum Windows ficou tanto tempo ligado sem dar pau.

Quando quiser, você pode:

```
AGUARDAR tantos milissegundos.
```

O compilador também entende unidades maiores como "minutos" ou "segundos".

O compilador possui uma variável chamada de temporizador que permite que você utilize os seguintes comandos:

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
O compilador utiliza esses cronômetros para verificar o tempo de recompilação, por exemplo (que atualmente é cerca de 3 segundos, dependendo do hardware).
Procure a seção `listagem` para ver todos os temporizadores. Você pode usá-los para tornar seus programas mais rápidos.

Os tempos podem ser cronometrados simplesmente inserindo os comandos `inicie um temporizador` e `pare o temporizador` nos pontos apropriados no seu código.

Tempos cumulativos podem ser acumulados usando o comando `zerar` uma vez e `reiniciar` logo em seguida juntamente com o comando "parar".

Existe uma função no compilador que permite que você obtenha o texto de um temporizador a qualquer momento — mesmo durante sua execução. Você também pode utilizar as operações de concatenação de strings neles.

