DECISORES

Um decisor nada mais � do que uma rotina que retorna "sim" ou "n�o" para determinados comandos. Exemplo:

```
Para decidir se uma coordenada est� dentro de uma caixa:
Para decidir se um n�mero � maior que outro n�mero:
Para decidir se algo est� selecionado em um texto:
```
As rotinas decisoras sempre come�am com as mesmas tr�s palavras. O formato �:

```
PARA DECIDIR SE alguma coisa:
```
Esse "alguma coisa" deve seguir as regras existentes para nomes de rotina e tipicamente incluir� um verbo como o `�`, `EST�`, `PODE`, `FAZ`, `DEVE`, ETC. Perceba que a conjuga��o dos verbos n�o importa muito.

O ideal � sempre criar decisores "positivos". Ou seja, se voc� quiser evitar dores de cabe�a no futuro usar as palavras `N�O`, `NUNCA`, `NENHUM`, `NADA` e similares. N�o se preocupe, caso seja realmente necess�rio utilizar tais temos, voc� pode. Mas na pr�tica o compilador vai meio que desfazer tudo que voc� fez.

Por exemplo, se voc� criar uma rotina que "decide se uma coordenada est� dentro de uma caixa", o compilador automaticamente vai saber dizer se "uma coordenada N�O est� dentro de uma caixa. Isso funciona pra quelauqer tipo de rotina decisora. Para saber mais, procure os exemplos dispon�veis nos arquivos de c�digo fonte.

Os decisores funcionam basicamente da mesma forma que as rotinas condicionais e imperativas. No entanto voc� n�o pode usar o comando SAIA em um decisor, por motivos �bvios, bem como qualquer outra forma que fa�a voc� sair sem dar alguma resposta. Um decisor sempre deve terminar com as palavras "DIGA SIM" ou "DIGA N�O".

