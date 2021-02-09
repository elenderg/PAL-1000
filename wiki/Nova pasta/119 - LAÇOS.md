LA�OS

Os comandos espec�ficos para la�os s�o `PERCORRA`, `REPITA`, `INTERROMPA` e `SAIA`.

O comando `PERCORRA` n�o faz nada a n�o ser indicar o come�o do la�o. O comando `REPITA` volta para o comando `PERCORRA`, se houver um. Se n�o houver, o comando volta para o topo da rotina. O comando `INTERROMPA` sai do LA�O e prossegue para o comando logo ap�s o �ltimo comando `REPITA`. Se n�o houver nenhum comando `REPITA`, o comando vai fazer a mesma coisa que o comando `SAIA`. Voc� s� pode usar um comando `PERCORRA` em cada rotina, mas n�o h� limites para a quantidade de `REPITA`, `INTERROMPA` ou `SAIA`.

O comando que come�a com "Se um contador tiver passado do m�ximo" chama um decisor especial que avan�a o conrador e verifica o mesmo logo ap�s. Como o contador � uma nova vari�vel local, quando a rotina � iniciada ele come�a valendo zero.

Observe que voc� pode utilizar os comandos `PERCORRA`, `REPITA` e `INTERROMPA` em um decisor, mas voc� n�o pode usar o comando `SAIA` porque isso interrompe o fluxo de decis�o da rotina. Por isso voc� precisa tomar cuidado para n�o sair sem querer de um decisor, tamb�m. Para sair de um decisor, utilize os comandos `DIGA SIM` ou `DIGA N�O`.

```
Para fazer um la�o em torno de um n�mero m�ximo:
\ coisas que voc� quer fazer antes do loop
Percorra.
\ coisas que voc� deseja fazer pelo menos uma vez
Se um contador tiver passado do valor m�ximo, pare.
Se [queremos saltar para fora do la�o], pare.
Se [queremos saltar de toda a rotina], saia.
\ coisas que voc� pode querer fazer ou n�o
Repita.
\ coisas que voc� quer fazer depois do loop
```
```
seu programa
```

