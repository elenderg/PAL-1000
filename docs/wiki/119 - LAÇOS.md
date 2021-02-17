﻿LAÇOS

Os comandos específicos para laços são `PERCORRA`, `REPITA`, `INTERROMPA` e `SAIA`.

O comando `PERCORRA` não faz nada a não ser indicar o começo do laço. O comando `REPITA` volta para o comando `PERCORRA`, se houver um. Se não houver, o comando volta para o topo da rotina. O comando `INTERROMPA` sai do LAÇO e prossegue para o comando logo após o último comando `REPITA`. Se não houver nenhum comando `REPITA`, o comando vai fazer a mesma coisa que o comando `SAIA`. Você só pode usar um comando `PERCORRA` em cada rotina, mas não há limites para a quantidade de `REPITA`, `INTERROMPA` ou `SAIA`.

O comando que começa com "Se um contador tiver passado do máximo" chama um decisor especial que avança o conrador e verifica o mesmo logo após. Como o contador é uma nova variável local, quando a rotina é iniciada ele começa valendo zero.

Observe que você pode utilizar os comandos `PERCORRA`, `REPITA` e `INTERROMPA` em um decisor, mas você não pode usar o comando `SAIA` porque isso interrompe o fluxo de decisão da rotina. Por isso você precisa tomar cuidado para não sair sem querer de um decisor, também. Para sair de um decisor, utilize os comandos `DIGA SIM` ou `DIGA NÃO`.

```
Para fazer um laço em torno de um número máximo:
\ coisas que você quer fazer antes do loop
Percorra.
\ coisas que você deseja fazer pelo menos uma vez
Se um contador tiver passado do valor máximo, pare.
Se [queremos saltar para fora do laço], pare.
Se [queremos saltar de toda a rotina], saia.
\ coisas que você pode querer fazer ou não
Repita.
\ coisas que você quer fazer depois do loop
```
```
seu programa
```

