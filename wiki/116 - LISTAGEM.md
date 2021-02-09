LISTAGEM

Se você é um fã de compiladores, você vai gostar disso. Se você não for, vire a página.

Você pode produzir uma lista criptografada de todas as definições do compilador utilizando o comando `Listar`. A listagem é salva como texto na pasta de origem recebe o nome dessa pasta junto com a extensão `.lst`. A interpretação deste arquivo é deixada para você como um exercício.

Mas vou dar-lhe algumas pistas. E algum incentivo.

A listagem consiste em doze seções distintas com os seguintes títulos: tipos, globais, literais, rotinas, tipo índice, índice global, índice literal, índice de rotina índice, índice de utilidade, importações, arquivos fonte e temporizadores. Cada título é seguido de dois pontos para que você possa pular para qualquer seção usando o comando `Encontrar`. Aqui está uma pequena amostra da seção `rotina`:

```
/routine/create [picture]/yes/no/no/no//4/0/00470A48/
/variable/parameter/yes/picture/picture/picture/picture/00000008/no/1/no////
/fragment/prolog/////00000000/00470A48/558BEC/
/fragment/loop/////00000000/00470A4B//
/fragment/push address/picture////00000000/00470A4B/8B950800000052/
/fragment/call internal///allocate memory for [picture]//00000000/00470A52/E8BDA70400/
/fragment/finalize/////00000000/00470A57//
/fragment/epilog/////00000000/00470A57/8BE55DC204000000/
```

Eu recomendo que você estude a rotina `listar` no compilador antes. Faça um pequeno programa, use o comando listar, e consulte o resultado. Adicione uma linha ou duas, e repita.

Passemos agora ao incentivo.

Se você encontrar algum erro no compilador, mande um email para os criadores e eles lhe enviarão algo bacana como uma camiseta em branco. Se você consegue descobrir como tornar o compilador mais simples sem deixar mais lento, eles vão te enviar uma camiseta personalizada. E se você puder criar uma maneira de fazer o compilador menor, mais rápido e mais poderosa tudo de uma só vez, tenho certeza que eles te enviarão uma camiseta sem manga bordada.

