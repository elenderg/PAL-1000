LITERAIS

Um valor "literal" � um valor constante em um programa. O compilador entende sete tipos diferentes de literais, cada um com um formato espec�fico.

Um "n�mero" literal s�o d�gitos, com um sinal opcional, mas sem espa�os ou observa��es:

Exemplos: `0`,` -2147483648`, `+2147483647`

Uma "Propor��o literal" � um n�mero, uma barra e um n�mero sem sinal:

Exemplos: `335/113`, `25946/9545`, `-19601/13860`

Um "literal misto" � um literal num�rico, um tra�o e uma propor��o sem sinal.

Exemplos: `1-1/2`, `-2-2/3`, `3-3/4`

Um `texto literal` � uma s�rie de caracteres entre aspas duplas. Se voc� precisar de uma aspa dupla dentro de uma string, coloque duas ao redor dela e pronto. Assim:

`"Este � um texto literal com ""aspas duplas em torno disto"" mas n�o disto"`

O �nico "ponteiro literal" � a palavra-chave `NIL`. Ele indica um ponteiro vazio ou inv�lido. Para fazer com que um ponteiro fique vazio (`NIL`) � s� usar o comando `ESVAZIAR`.

Uma `bandeira literal` � uma das palavras-chave `SIM` ou `N�O`. Voc� pode definir uma bandeira para colocar `SIM` nela, e voc� pode `LIMPAR` uma bandeira para colocar `N�O` nela.

Um `nibble literal` � um `$` seguido de d�gitos hexadecimais. Provavelmente voc� n�o precisar� utiliz�-los. Aqui est� uma amostra, de qualquer forma:

```
$DED0FEDE
```

