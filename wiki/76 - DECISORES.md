﻿DECISORES

Um decisor nada mais é do que uma rotina que retorna "sim" ou "não" para determinados comandos. Exemplo:

```
Para decidir se uma coordenada está dentro de uma caixa:
Para decidir se um número é maior que outro número:
Para decidir se algo está selecionado em um texto:
```
As rotinas decisoras sempre começam com as mesmas três palavras. O formato é:

```
PARA DECIDIR SE alguma coisa:
```
Esse "alguma coisa" deve seguir as regras existentes para nomes de rotina e tipicamente incluirá um verbo como o `É`, `ESTÁ`, `PODE`, `FAZ`, `DEVE`, ETC. Perceba que a conjugação dos verbos não importa muito.

O ideal é sempre criar decisores "positivos". Ou seja, se você quiser evitar dores de cabeça no futuro usar as palavras `NÃO`, `NUNCA`, `NENHUM`, `NADA` e similares. Não se preocupe, caso seja realmente necessário utilizar tais temos, você pode. Mas na prática o compilador vai meio que desfazer tudo que você fez.

Por exemplo, se você criar uma rotina que "decide se uma coordenada está dentro de uma caixa", o compilador automaticamente vai saber dizer se "uma coordenada NÃO está dentro de uma caixa. Isso funciona pra quelauqer tipo de rotina decisora. Para saber mais, procure os exemplos disponíveis nos arquivos de código fonte.

Os decisores funcionam basicamente da mesma forma que as rotinas condicionais e imperativas. No entanto você não pode usar o comando SAIA em um decisor, por motivos óbvios, bem como qualquer outra forma que faça você sair sem dar alguma resposta. Um decisor sempre deve terminar com as palavras "DIGA SIM" ou "DIGA NÃO".

