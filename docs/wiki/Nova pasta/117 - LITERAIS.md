LITERAIS

Um valor "literal" é um valor constante em um programa. O compilador entende sete tipos diferentes de literais, cada um com um formato específico.

Um "número" literal são dígitos, com um sinal opcional, mas sem espaços ou observações:

Exemplos: `0`,` -2147483648`, `+2147483647`

Uma "Proporção literal" é um número, uma barra e um número sem sinal:

Exemplos: `335/113`, `25946/9545`, `-19601/13860`

Um "literal misto" é um literal numérico, um traço e uma proporção sem sinal.

Exemplos: `1-1/2`, `-2-2/3`, `3-3/4`

Um `texto literal` é uma série de caracteres entre aspas duplas. Se você precisar de uma aspa dupla dentro de uma string, coloque duas ao redor dela e pronto. Assim:

`"Este é um texto literal com ""aspas duplas em torno disto"" mas não disto"`

O único "ponteiro literal" é a palavra-chave `NIL`. Ele indica um ponteiro vazio ou inválido. Para fazer com que um ponteiro fique vazio (`NIL`) é só usar o comando `ESVAZIAR`.

Uma `bandeira literal` é uma das palavras-chave `SIM` ou `NÂO`. Você pode definir uma bandeira para colocar `SIM` nela, e você pode `LIMPAR` uma bandeira para colocar `NÃO` nela.

Um `nibble literal` é um `$` seguido de dígitos hexadecimais. Provavelmente você não precisará utilizá-los. Aqui está uma amostra, de qualquer forma:

```
$DED0FEDE
```

