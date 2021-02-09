LISTAGEM

Se voc� � um f� de compiladores, voc� vai gostar disso. Se voc� n�o for, vire a p�gina.

Voc� pode produzir uma lista criptografada de todas as defini��es do compilador utilizando o comando `Listar`. A listagem � salva como texto na pasta de origem recebe o nome dessa pasta junto com a extens�o `.lst`. A interpreta��o deste arquivo � deixada para voc� como um exerc�cio.

Mas vou dar-lhe algumas pistas. E algum incentivo.

A listagem consiste em doze se��es distintas com os seguintes t�tulos: tipos, globais, literais, rotinas, tipo �ndice, �ndice global, �ndice literal, �ndice de rotina �ndice, �ndice de utilidade, importa��es, arquivos fonte e temporizadores. Cada t�tulo � seguido de dois pontos para que voc� possa pular para qualquer se��o usando o comando `Encontrar`. Aqui est� uma pequena amostra da se��o `rotina`:

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

Eu recomendo que voc� estude a rotina `listar` no compilador antes. Fa�a um pequeno programa, use o comando listar, e consulte o resultado. Adicione uma linha ou duas, e repita.

Passemos agora ao incentivo.

Se voc� encontrar algum erro no compilador, mande um email para os criadores e eles lhe enviar�o algo bacana como uma camiseta em branco. Se voc� consegue descobrir como tornar o compilador mais simples sem deixar mais lento, eles v�o te enviar uma camiseta personalizada. E se voc� puder criar uma maneira de fazer o compilador menor, mais r�pido e mais poderosa tudo de uma s� vez, tenho certeza que eles te enviar�o uma camiseta sem manga bordada.

