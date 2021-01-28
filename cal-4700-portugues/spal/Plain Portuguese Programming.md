# Programação em Português Simples


```
Copyright © 2006 2021<br>

A Ordem Osmosiana de Programadores<br>

http://www.osmosian.com<br>
```


## CONTEÚDO

Visão Geral<br> Programa de Amostra<br> Glossário<br>

## Visão Geral


## INTRODUÇÃO

Seja bem-vindo ao PAL - *Portuguese Compiler And Linker*. A função principal do PAL é transformar arquivos de texto em português simples em programas executáveis compatíveis com a sistema operacional Windows. O código fonte do PAL  apenas 25.000 linhas escritas totalmente em português  é surpreendentemente amplo e abrangente. O código está distribuiído nos seis arquivos a seguir:

1. O **Ambiente de Trabalho**, uma pequena interface de usuário com menus e abas;
2. O **Explorador de Arquivos**, que fornece acesso direto ao sistema de arquivos;
3. O **Bloco de Notas**, uma ferramenta enxuta e simples para manipular arquivos de texto;
4. O **Caderno**, um elegante criador e editor de páginas (que inclusive foi utilizado para produzir este documento);
5. O **Agrupador e Vinculador de Tarefas** (Compiler And Linker), mencionado acima; e
6. O **Cérebro**, meu lobo frontal, que eu levo comigo pra todo lugar.

Eu sou capaz de me replicar e consigo me recompilar em menos de três segundos. Que é menos tempo do que o Word leva só para iniciar.

**
#### INSTALAÇÃO**

De acordo com a filosofis da Ordem Osmosiana, os programas nunca devem exigir procedimentos especiais de instalação. O código fonte, o arquivo executável e toda a documentação (tanto em formato próprietário quanto em PDF) estão todos contidos na pasta CAL-4700. Basta clicar duas vezes no arquivo executável e o programa é iniciado no mesmo instante.

**
#### CONTATO PARA DÚVIDAS E OUTRAS QUESTÕES**

Antes de mais nada, o PAL é o compilador mais avançado do mundo, quando se trata de analisar e interpretar comandos em língua portuguesa. Nenhum compilador nosso cometeu algum erro ou distorceu alguma informação. Todos eles, através de qualquer definição prática das palavras, são infalíveis e incapazes de cometer erros. Mesmo assim...

Questões e comentários podem ser enviados para *[help@osmosian.com](mailto:help@osmosian.com)* (em inglês). Se você não sabe inglês, mande um email para *[elenderg+osmosian@gmail.com](mailto:elenderg+osmosian@gmail.com)*.</p>


## O AMBIENTE DE TRABALHO

Quando o PAL é iniciado, ele preenche totalmente a tela para que você não precise mais olhar para aquela interface horrível que vem junto com o Windows. Em vez disso, você verá meu rosto simples mas honesto, assim:

Acho que é tudo bastante óbvio. Menus alfabéticos, avisos no canto superior direito. Área de trabalho no meio, abas (para escolher uma área de trabalho diferente) na parte inferior. Aliás, você pode arrastar as abas para a esquerda e para a direita para mudar a ordem delas, se preciso.

Essas são as minhas setas. Elas aparecerão quando você precisar delas.

Observe que não há nenhuma barra de rolagem na interface. Isso é totalmente proposital. Para rolar, pressione o botão direito do mouse e arraste.

Observe também que as teclas <kbd>Ctrl</kbd> e <kbd>Alt</kbd> são intercambiáveis. Dessa forma, você pode usar seu polegar ou o mindinho para pressionar as teclas de atalho. Uma das exceções é a combinação de teclas <kbd>Alt+Tab</kbd>, usada para mudar para outros aplicativos.

```
A B C D E G G I J K ... W X Y Z 3 itens
```
```
a:\ (unidade de disquete)<br>
c:\ (disco rígido)<br>
d:\ (unidade de cd-rom)<br>
```

## O EXPLORADOR DE ARQUIVOS

O Explorador De Arquivos mostra o sistema de arquivos do Windows como ele realmente é. Ele não põe nenhuma moldura cafona nas janelas. Muito menos ícones feios. Apenas as pastas e o que há nelas.

Cada área de trabalho está inicialmente posicionada no nível mais baixo, como mostrado acima.

Existem comandos no botão `N` que permitem criar novas pastas, novos documentos (para o caderno) e novos arquivos de texto (para o compilador). A opção de renomear arquivos está no menu `R`. Os comandos `Cortar`, `Copiar`, `Colar` e `Duplicar` estão justamente onde você esperaria que eles estivessem e funcionam perfeitamente.

Se você usar o comando `Abrir` numa pasta ou se você clicar duas vezes nela, o programa irá exibir o conteúdo dela.

Quando você abrir um arquivo de texto, o `bloco de notas` entra em ação.

Quando você abrir um documento, o` caderno` entra em ação.

Quando você abre qualquer outra tipo de arquivo, o conteúdo do arquivo é convertido na memória em um arquivo hexadecimal para ser exibido no `bloco de notas`. Não é possível modificar diretamente o conteúdo nesse tipo de visualização. Você pode no entanto forçar com que um arquivo seja aberto como texto ou como um "arquivo de despejo" (dump). Para fazer isso, clique no menu `A`.

Para fechar o arquivo, use o comando `Fechar`, clique na aba que você está utilizando, ou pressione a tecla `Esc`.

```
A B C D E G G I J K ... W X Y Z 3 itens
```
```
a:\ (unidade de disquete)<br>
c:\ (disco rígido)<br>
d:\ (unidade de cd-rom)<br>
```

## O BLOCO DE NOTAS

O `bloco de notas` é simples e eficiente. Quando você abre um arquivo de texto, o conteúdo dele é exibido imediatamente. Você pode alterar o conteúdo à vontade usando o teclado e mouse, nas formas mencionadas anteriormente.

Essas aqui, por exemplo, são as instruções que meus criadores me deram para imprimir um determinado número de cópias de um arquivo. Essa é uma parte do código que está presente no meu `bloco de notas`. Isso mesmo, eu estou editando o código do `bloco de notas` no próprio `bloco de notas`. Eu adoro poder fazer isto. É como olhar para a sua própria alma.

Agora ouça atentamente — é assim que você faz para se deslocar rapidamente no meu bloco de notas.

Digamos que você esteja procurando o código acima. Pressione `CTRL+HOME` para ir instantaneamente para o começo do arquivo. Em seguida, aperte `CTRL+F` e comece a digitar o que você quiser pesquisar. Digamos que você digite a letra <kbd>T</kbd>. Na mesma hora nós nos chegamos no primeiro `T` do arquivo. Agora continue e aperte a tecla `O`. Encontramos a palavra `To`. É só continuar digitando até onde precisar. Use a tecla <kbd>⌫</kbd> se você cometer um erro. Se você quiser encontrar a próxima palavra correspondente, pressione <kbd>Ctrl+N</kbd>. Para encerrar a busca, basta apertar a tecla <kbd>Esc</kbd>. Simples e eficiente, como tudo deveria ser.

```
A B C D E G G I J K ... W X Y Z 681:
```

```
Para imprimir uma quantidade de cópias de um arquivo:
Se não existir arquivo, cancele a operação.
Comece a impressão.
Repetição.
Adicione 1 na cópia.
Se a cópia for maior que o número, pare.
Imprima a cópia do arquivo.
Repita.
Termine de imprimir.
```
## `bloco de notas`

## O CADERNO

O `caderno` é um programa de diagramação de páginas totalmente completo, que permite que você escreva documentações como essa de forma fácil. Na verdade, você pode encontrar este mesmo documento dentro da pasta documentação e visualizá-lo dentro do caderno, funcionando como um arquivo de ajuda.

Quando você abre um arquivo criado no `caderno`, talvez esse mesmo que você esteja lendo agora, você vê uma lista de todas as páginas no documento:

E quando você abre uma página, aí está:

Páginas podem conter gráficos vetoriais, imagens do tipo bitmap e texto. Você pode efetuar uma verificação ortográfica, imprimir a página, ampliar ou reduzir o zoom da página, e muito mais. Mas o que realmente é bacana é que todos esses documentos são armazenados como texto simples. Vá em frente. Forçe o programa a abrir um documento criado no `caderno` como se fosse um texto criado no `bloco de notas`.

```
A B C D E G G I J K ... W X Y Z 120 páginas
```
```
Programação em Português...
SUMÁRIO...
Visão Geral...
```
```
A B C D E G G I J K ... W X Y Z Página 8
```
## `o caderno`

O caderno é um programa de diagramação de páginas totalmente completo, que permite que você escreva documentações como essa de forma fácil. Na verdade, você pode encontrar este mesmo documento dentro da pasta documentação e visualizá-lo dentro do caderno, funcionando como um arquivo de ajuda.

## O AGRUPADOR

Agora eu sei que a maioria dos guias de programação iria mostrar um pequeno algoritmo do tipo "Olá, Mundo" — esperando que você ficasse impressionado com isso — mas eu gostaria de sugerir que nós pulemos as coisas de criança e fôssemos direto para as coisas de gente grande.

Sei que pode isso pode te deixar um pouco aprreensivo. Mas não hesite agora. Esta pode ser a primeira vez para você, mas eu sou macaco velho nisso aqui. *Se me der a mão eu te guiarei*... Suavemente.

(1) Abra a pasta do `PAL` e copie todos os seis arquivos para a área de transferência do `localizador`: <br> `o agrupador, <br>
o ambiente de trabalho, <br>
o bloco de notas, <br>
o localizador, <br>
o cérebro e<br>
o caderno.<br>` Segure a tecla `Shift ⇧` ao clicar ou arraste para selecionar. A opção de copiar arquivos está no menu `C`.

(2) Crie uma nova pasta na no seu disco rígido com um nome apropriado, por exemplo `CAL`. Então abra a pasta e cole os seis arquivos dentro dela. Agora abra qualquer um desses arquivos. Para abrir todos eles, basta arrastar para selecionar e apertar a tecla <kbd>Enter ⏎</kbd>.

(3) Ok, estamos prontos. Localize o menu `E` e selecione `Executar`. Você verá algumas mensagens de status, e então nosso novo novo CAL ganhará vida. Faça isso. Vamos, faça logo. Mas vigie de perto ou você pode deixar de testemunhar o evento. Eu nunca demoro muito tempo pra fazer meu trabalho.

Foi tão bom para você quanto para mim? Veja como ele é igualzinho ao outro! Mas saiba que são dois programas diferentes — você pode comprovar isso com o comando `Versão`. E se você der uma olhada no conteúdo da pasta em uma aba vazia, você verá o arquivo executável que geramos.

Note que cada programa é armazenado em sua própria pasta. Se você quer criar seu próprio compilador, você precisa apenas copiar o arquivo `o cérebro` e escrever o restante do código você mesmo. Qualquer arquivo sem uma extensão é tratado como o código fonte, sendo que o nome da pasta determinará o nome do arquivo `.exe`.

Você pode sair da cópia agora, e — partindo do pressuposto de que você acredita que um criador pode fazer o que ele quiser com suas criações — você pode apagá-la.

## O CÉREBRO

Meu último arquivo é chamado de *o cérebro*.

Cerca de metade deste arquivo são tipos, variáveis globais e rotinas que você indubitavelmente achará úteis. Tudo isso será explicado com calma mais adiante.

A outra metade é código assembly — garanto que você não vai querer examinar isso de perto. A maior parte disso serve para fazer o programa funcionar no WIndows.

Aqui está um exemplo. Veja se você consegue dizer qual é qual.

```
A B C D E G G I J K ... W X Y Z 143:
```

```
Um segundo é 1000 milissegundos.
```
```
O símbolo de direitos autorais é um byte com valor igual a 169.
```
```
Para que uma letra seja transformada em letra maiúscula:
Se o valor da letra for menor que o valor da letra A maiúscula, ignore a letra.
Se o valor da letra for maior do que o valor da letra z minúscula, ignore a letra.
Subtraia 32 do valor da letra.
```
```
Para que o Component Object Model seja inicializado:
Mande os códigos 0 e 2 para a função "CoInitializeEx" da biblioteca "ole32.dll" [coinit_aparthreaded].
```
```
Para que se subtraia o valor de um byte usando o valor de outro byte:
Intel $8B85080000000FB6008B9D0C0000002803.
```
## `o cérebro`

## DETALHES BÁSICOS DO FUNCIONAMENTO DO COMPILADOR

Muito bem. Veja aqui como é possível fazer tanto com tão pouco.

(1) O compilador só entende cinco tipos de expressões:

a) definições de tipo que sempre começam com `Um`, `Uma`, `Uns`, `Umas`, `Alguns` ou `Algumas`;<br> (b) definições de variáveis globais, que sempre começam com `O`, `A`, `Os`, `As`;<br> (c) prefixo de nomes de tarefas, que sempre começam com `Para`, `Para que`, `Para que se`;<br> (d) instruções condicionais, que sempre começam com  `Se; e`<br> (e) comandos imperativos, que começam com a palavra logo depois dos prefixos mencionados na letra  `c`.

(2) Qualquer coisa que vier depois de `Um`, `Uma`, `Uns`, `Umas`, `Alguns` ou `Algumas` `O`, `A`, `Os`, `As` é tratada como se fosse um substantivo. Eu também reconheço os seguintes  componentes gramaticais:

(a) verbos simples, como `SER`, `ESTAR`, `PODER`, ou `FAZER`, e suas respectivas conjugações;<br> (b) conjunções, como `E`, `MAIS`, `COM`, `SEM`, `OU`, etc;<br> (c) preposições e suas locuções, como `EM BAIXO`, `ABAIXO`, `EM CIMA`, `ACIMA`, `DENTRO`, `FORA`, etc;<br> (d) qualquer literal, como `123` ou `"Olá, mundo!`, ou<br> (e) qualquer sinal de pontuação.<br>

(3) Eu considero quase todas as outras palavras como substantivos, exceto essas:

(a) operadores aritméticos: `MAIS`, `MENOS`, `VEZES`, `DIVIDIDO POR` e `JUNTO DE`;<br> (b) palavras especiais de definição: `CHAMADO(A)` e `IGUAL`; e<br> (c) imperativos: `PERCORRA`, `IGNORE`, `SAIA`, `REPITA` e `DIGA`.

Então você pode ver que o compilador é simples, mas poderoso. O compilador analisa frases da mesma maneira que alguém faria. Procurando por palavras especiais — artigos, verbos, conjunções, preposições — e depois correlaciona tudo. Sem utilizar gramáticas complicadas, nem árvore de análise sintática.

Mas há coisas que podem surpreendê-lo. Ou desafiá-lo. Ou te enfurecer.


## REGRAS

O compilador não fazr difrença entre letras maiúsculas ou minúsculas. Um pequeno erro de digitação como esse não deveria jamais impedir a execução de um programa. A vida já é difícil o bastante. Não preciamos de programadores JAVA deixando ela ainda mais difícil.

A ordem em que você declara suas variáveis também não importa. Quaisquer razões que houvessem para tais práticas restritivas, elas não se aplicam mais. Fala sério, já estamos no século 21. Vamos acordar pra vida.

O compilador não permite o uso de comandos condicionais aninhados. (Ou seja, um `Se` dentro de outro). Códigos assim demonstram claramente que você está confuso isso é algo que eu não vou tolerar. Se você acha que isso trava demais o seu estilo de programação, dê uma olhada no código do compilador para ver como é perfeitamente possível programar sem esse recurso. Então pare pra pensar um pouco.

O compilador não permite o uso de comandos de repetição aninhados. (Ou seja, um `loop` dentro de outro). Laços aninhados indicam que você falhou em fatorar corretamente seu código em pequenas partes gerenciáveis, e eu não quero que você se arrependa disso depois. Vez após vez eu pensei que isso podia dar certo, mas toda vez eu descobri que estava redondamente enganado.

A linguagem não é orientada a objetos. Objetos são ruins. A linguagem provê uma forma limitada de extensão de registro (records), possuindo uma maneira notável de reduzir tipos em outros tipos, mas ela não possui objetos. Todos os aplicativos (editor de texto, editor de páginas, etc) funcionam muito bem sem eles, obrigado.

A linguagem NÃO trabalha com Números Reais.  Frações racionais são permitidas, mas números irracionais não. O editor de páginas reduz e amplia e dimensiona as formas proporcionalmente dentro e fora dos grupos e faz tudo sem utilizar nenhum número real. O Mestre Kronecker estava certo quando disse, em alemão, "O querido Deus criou os números inteiros; todo o resto é obra dos homens." A filosofia da linguagem não está interessada em *menschenwerk*.

Como você deve ter deduzido, equações também não são permitidas. É possível utilizar um pouco de matemática, junto com "campos calculados", mas quase todo o código que você escreve será de natureza estritamente procedimental. Um dos princípios da Sociedade Osmosiane é: "O universo é um algoritmo, não uma fórmula." Essas são palavras que você deveria levar a sério. Especialmente se você for fissurado em matemática.
## Um Programa de Exemplo
## </p>


## Pintando como Claude Monet

Certo. Agora que estamos familiarizados com os princípios básicos da linguagem, vamos fazer mais um programa. Do zero. O programa vai ter botões, e inclusive vai se conectar à internet. Seguem alguns pensamentos sobre a interface:

Você o entendeu o trocadilho? Pensamentos SOBRE a interface?" Eu adorei!

Também estou pensando que deveríamos pedir ao nosso programa que pinte mais do que apenas uma obra de arte para cada termo informado — sabe, até mesmo os melhores artistas podem ficar "sem inspiração" às vezes. Iremos usar as teclas <kbd>Home</kbd>, <kbd>End</kbd>, <kbd>Page Up</kbd> e <kbd>Page Down</kbd> para navegar entra as obras de arte.

Provavelmente também devemos implementar alguns atalhos de teclado, para que você possa ver como isso é feito. Vamos usar a tecla <kbd>Esc</kbd> para limpar a entrada, <kbd>Ctrl+P</kbd> para Imprimir e <kbd>Ctrl+Q</kbd> para sair. Vamos considerar <kbd>Alt+P</kbd> e <kbd>Alt+Q</kbd> como sinônimos de <kbd>Ctrl+P</kbd> e <kbd>Ctrl+Q</kbd>.

```
O HAL 9000_ Trabalhando... Imprimir Sair
```
```
Uma obra de arte original, no estilo de Claude Monet, é criada na tela.
(3) Usamos estes lindos botões para imprimir (4) e sair.
As mensagens vão aparecer aqui.
```
Nós digitamos o nome de qualquer pessoa, lugar ou coisa aqui, e apertamos `Enter`.


## A PASTA DO PROJETO

Agora que estamos de acordo com o design do programa, vamos começar a programá-lo.

Primeiro, precisamos de uma pasta para o nosso projeto. Então, crie uma nova pasta em qualquer lugar que quiser e com o nome que quiser. Vamos supor que você tenha criado a pasta em sua unidade `C` e que a chamou de `Cal Monet`, desse jeito:

Excelente. Agora copie o arquivo `o cérebro` que veio junto com o código fonte do PAL e cole ele dentro da pasta que covê criou.

Última parte. Crie um novo arquivo de texto nessa pasta, com o nome que você achar melhor. Mas não coloque nenhuma extensão (como `txt`, por exemplo). No momento, o compilador só aceita arquivos sem extensão. Vamos supor que você decidiu usar o nome `Como pintar`, ficando assim:

E agora estamos prontos para escrever um código em inglês simples.

```
A B C D E G G I J K ... W X Y Z 4 itens
```
```
c:\uma pasta que você já tem com um nome ridiculamente longo
c:\cal monet
c:\cal-
c:\outra pasta que você já tinha
```
```
A B C D E G G I J K ... W X Y Z 2 itens
```
```
c:\cal monet\como pintar
```
```
c:\cal monet\o cérebro
```

## COMO EXECUTAR O PROGRAMA

Abra nosso arquivo `Como pintar` e tente executá-lo. Dica: use <kbd>Ctrl+R</kbd>. Leia o erro que apareceu na barra de menu, em seguida, clique no mouse ou aperte a tecla <kbd>Esc</kbd> para voltar ao normal.

Para executar o programa, precisamos de alguns comandos como estes da rotina abaixo:

Escreva o código acima no arquivo `como pintar`. Verifique se digitou tudo corretamente. Você até pode copiar e colar o código, mas garanto que digitar comando por comando vai proporcionar um melhor entendimento da linguagem e do ambiente como um todo.

Este é o menor programa que pode ser escrito usando `o cérebro`. Ele será executado, mas não vai faz muita coisa ainda. Vá em frente. Experimente.

Viu só? Mas não se engane. O programa realmente está sendo executado.

Se você quer saber o que o programa fez, abra o arquivo `o cérebro` e use o comando Localizar (como discutimos anteriormente) para buscar as palavras `Para executar`. Rotinas sempre começam com a palavra `Para` (e suas derivações), e seus cabeçalhos sempre terminam com dois-pontos.

Você pode destrinchar todo o código até onde quiser. Está tudo lá. Até mesmo as chamadas e instruções complicadas que são necessárias para se comunicar com o Windows. Mas vamos mudar de assunto. Vamos para o que interessa.

```
Para que o programa seja executado:
Inicie o programa.
Feche o programa.
```
```
como pintar
```

## ESTRUTURA BÁSICA

Aqui está, pois, a estrutura básica do nosso programa. Em primeiro lugar, temos que usar o comando `Inicie o programa`. Depois disso podemos adicionar os comandos que quisermos que o programa execute. Em seguida, lidamos com os comandos do usuário (como pressionamentos teclas e cliques do mouse). Então nós finalizamos as nossas coisas e encerramos as atividades do programa. Aqui está o novo código:

Ainda não faz muito, é claro, mas é o suficiente para que o código seja executado sem maiores problemas. Experimente para ter certeza.

Observe que você pode organizar seu código em cronologicamente ou hierarquicamente, ou do jeito que achar melhor. Tanto faz, e já que você foi ensinado a usar o comando `Encontrar` para localizar as coisas, realmente não importa.

De acordo com a filosofia da linguaem é melhor manter uma ordem alfabética. Por conta disso há um menu para `Classificar por Ordem Alfabética` na letra `C`. A organização ocorre de acordo com as letras iniciais de cada linha, e comentários soltos são considerados como parte integrante da tarefa logo acima deles. Experimente. Você pode usar o comando `Desfazer` se não gostar do resultado.

```
Para que o programa seja executado:
Inicie o programa.
Inicialize as tarefas.
Gerencie os comandos do usuário.
Finalize as tarefas pendentes.
Feche o programa.
```
```
Para que as tarefas sejam inicializadas:
```
```
Para que os comandos do usuário sejam gerenciados:
```
```
Para que as tarefas pendentes sejam finalizadas:
```
```
como pintar
```

## COMENTÁRIOS

Você provavelmente notou que eu mencionei comentários na página anterior, mas não disse como criá-los. Eu fiz isso de propósito. Comentários em geral indicam que seu código não está tão claro quanto deveria.

Por conta disso, a maioria dos comentários é inútil ou coisa pior. Inútil, se eles apenas repetem o que o código já diz. Pior ainda, se eles tentarem esclarecer um código confuso que deveria ter sido escrito mais claramente, em primeiro lugar.

Mesmo assim, a linguagem suporta comentários. Existem 03 tipos de comentários, e cada um é tratado de forma diferente pelo `bloco de notas`.
#### COMENTÁRIOS SIMPLES

Qualquer coisa que você colocar depois uma barra invertida `` e antes do fim de uma linha é considerado como um comentário simples:

Você pode inserir um comentário simples de cada vez ou você pode selecionar um conjunto inteiro de linhas e executar um desses dois comandos abaixo:

O `bloco de notas` exibe comentários simples na cor azul claro, o que acaba por ser muito útil. Caso você deseje alterar a cor dos comentários, será necessário recompilar o programa, mudando a seguinte linha de código:<br> `Utilize a cor azul claro como cor dos comentários.`.

```
Comentar T ou Transformar comentários em código U
```
```
Para que as tarefas sejam inicializadas:
```
```
como pintar
```
```
\ Este é um comentário inútil que ocupa uma linha inteira do código
\ Este é um comentário inútil no final de uma linha
```

## OBSERVAÇÕES

Se você tiver que fazer um comentário permanente em seu código, e não quer que tudo fique colorido, você pode colocá-lo entre colchetes, como no caso abaixo:

Essas observações podem aparecer em qualquer lugar da linha, e podem se alternar com o código executável. Para evitar erros de compilação, as observações não pulam linhas.
#### QUALIFICADORES (PARÂMETROS DE FUNÇÕES E PROCEDIMENTOS)

O terceiro tipo de *"comentário"* que compreendo são os `qualificadores`. Os qualificadores são colocados entre parênteses e só podem aparecer nos títulos de tarefas (cabeçalhos de rotina). Obviamente você também terá que usá-los na hora de chamar as rotinas. Considere, por exemplo, este caso:

Observe que os qualificadores não são iguais aos comentários e observações simples. Qualificadores são considerados parte do programa e afetam como o código compilado é executado. Vamos ver alguns qualificados no `como pintar` em breve.

```
Para exibir uma mensagem de alerta para o usuário:
Chame a biblioteca "kernel32.dll" "Beep" usando como parâmetro 220 [hertz] e 200 [ms].
```
```
<code>o cérebro</code>
```

</code>
```
Para centralizar uma caixa dentro de outra caixa:
Centralize a caixa dentro da outra caixa (horizontalmente).
Centralize a caixa dentro da outra caixa (verticalmente).
```
```
<code>o cérebro</code>
```

</code>

## SOBRE O COMANDO PERCORRA

Se você deu uma olhada no `o cérebro` algumas páginas atrás, deve ter visto que até mesmo a tarefa `Inicialize o programa` requer mais de 100 linhas do código mais feio já visto pelo ser humano. E se você investigar mais aprofundadamente o processamento de eventos definido lá, você descobrirá que as coisas só ficam piores daí pra frente.

```
Felizmente, foi possível simplificar tudo isso, então nosso manipulador de eventos requer apenas cinco linhas. Aqui está. Clique nele Mas não execute ainda.
```
Se você é um profissional experiente, você saberá o que quero dizer quando digo que `um evento` na segunda linha define uma nova variável local do tipo `evento`, referenciado nas linhas 03 e 04 como `o evento`. E você vai entender que as mesmas palavras no cabeçalho da outra rotina definem um parâmetro do mesmo tipo (passado por referência) que é conhecido, dentro dessa outra rotina, como `evento`. Você também perceberá, depois que pensar um pouco, que uma das coisas que torna a linguagem sucinta é que não nomeamos variáveis e parâmetros — nos referimos a elas com um artigo e um nome de tipo. Assim como na vida real.

```
Se você não é um profissional, não se preocupe com isso. Isso significa o que diz.
```
```
Para gerenciar os comandos do usuário:
Remova o evento da fila.
Se o evento não existir, ignore-o.
Gerencie o comando.
Repita.
```
```
Para que se gerencie um evento:
```
```
como pintar
```

## REPETIÇÕES INFINITAS

Eu te avisei para não executar o programa ainda. A razão é que nós ainda nãocriamos nenhuma forma de parar o programa. Uma vez iniciado, o programa vai simplesmente repetir as mesmas instruções, para sempre.

O termo tradicional é "laço infinito", mas como ele não é grande em tamanho, mas é longo em duração, eu prefiro o termo "laço eterno". De qualquer forma, isso é um problema.

Especialmente se você foi bobo o bastante para executar o programa quando eu lhe disse para não fazer isso.

Mas vamos supor que você foi lá e fez mesmo assim. Ou que algum erro futuro leva você para esse mesmo estado miserável. O que dá pra fazer além de usar um `Ctrl+Alt+Del`?

Eu vou te contar. Na verdade, eu vou te mostrar. Execute o programa. Eu insisto.

Eu sei que não parece, mas o programa já está sendo executado. A gente ainda não encerrou o processo dele,lembra? A gente ainda não encerrou o processo dele,lembra? Você não percebe porque ainda não dissemos para o programa fazer nada que fosse visível ou audível. Mas o programa está rodando. A gente ainda não encerrou o processo dele,lembra? E rodando. Bem, existe uma forma fácil de fazer isso. É bem assim:

(1) Use o comando `Alt+Tab` para voltar para a tela do Pal.

(2) Clique no comando `Parar`. Está lá na letra `P`.

Ufa! Você consegui ver os dois programas rodando quando deu o `Alt+Tab`? Ainda não? Tente fazer tudo de novo. Já? Excelente. Você parou o programa `como pintar`? Ainda não? Vai logo. Conseguiu agora? Excelente. Verifique só pra ter certeza se parou mesmo. Ainda não? Tente novamente. Já? Excelente.

É assim que se faz.

```
Parar
```

## O GERENCIADOR DE COMANDOS

A caixa de ferramentas do Windows inclui centenas de eventos que, em tese, devem ser gerenciados em qualquer aplicativo significativo. O curioso é que esse compilador (e todos os outros programas embutidos, desde `o ambiente de trabalho, localizador de arquivos, caderno`, etc) foram feitos usando apenas 10 eventos. Isso mesmo, apenas 10.

O nosso programa vai usar lidar com 04 tipos de comandos do usuário. Insira este código:

Se você é um veterano, você provavelmente adivinhou que `o comando do usuário` é uma variável do tipo registro e que `tipo` é um campo desse registro. E sim, o `campo` é uma string. Você pode saber mais sobre eventos, registros, campos e caracteres encadeados nas seções de referência deste livro. Se você for um iniciante, apenas tente se lembrar dos qualificadores e siga em frente.

```
Para gerenciar um comando do usuário:
Se o tipo do comando for "definir cursor", gerencie o comando (definir cursor); prossiga.
Se o tipo do comando for "atualização", gerencie o comando (atualização); prossiga.
Se o tipo do comando for "clique do mouse", gerencie o comando (clique do mouse); prossiga.
Se o tipo do comando for "pressionamento de tecla", gerencie o comando (pressionamento de tecla); saia.
```
```
Para gerenciar o comando (definição de cursor):
Mostrar o cursor da seta.
```
```
Para gerenciar um comando do usuário (atualização):
```
```
Para gerenciar um comando do usuário (clique do mouse):
```
```
Para gerenciar um comando do usuário (pressionamento de tecla):
```
```
como pintar
```

## FECHANDO O PROGRAMA

Vamos usar o atalho `Ctrl+Q` para que possamos sair do `como pintar` a qualquer momento que quisermos. Primeiro, adicionamos o seguinte código ao nosso gerenciador de pressionamento de teclas:

Um comando é modificado quando a tecla <kbd>Ctrl</kbd> ou a tecla <kbd>Alt</kbd> são pressionadas junto com a tecla original. O código dessa tarefa se encontra no arquivo `o cérebro`. Você pode procurá-lo se quiser.

Agora vamos adicionar mais uma tarefa ao nosso programa:

A `tecla q` também está definida no arquivo `o cérebro` bem como o comando `fechar`.

E agora, nós estamos prontos. Execute o programa. Caso o programa não tenha aberto automaticamente, pressione <kbd>Alt+Tab</kbd>. Certifique-se de estar no Monte Caral. Pressione <kbd>Ctrl+Q</kbd>, ou <kbd>Alt+Q</kbd>. Dê mais um <kbd>Alt+Tab</kbd> para se certificar de que o programa foi fechado corretamente. Muito bem.

```
Para gerenciar o comando (pressionamento de tecla):
Se o comando tiver sido modificado, gerencie o comando (atalho); prossiga.
```
```
como pintar
```
```
Para gerenciar um comando (atalho):
Se a tecla do comando for a tecla q, feche o programa; saia.
```
```
como pintar
```

## EVITANDO FALHAS DURANTE A EXIBIÇÃO DO PROGRAMA

É hora de começar a pensar em colocar algo na tela. O que, infelizmente, é mais difícil do que deveria. Existem duas dificuldades que devemos superar. A primeira delas envolve a taxa de atualização do conteúdo na tela do monitor.

Freqüentemente, uma tela completa consiste em um número de objetos distintos e sobrepostos, sendo que os elementos da parte de trás costumam ser exibidos antes que os elementos da parte da frente. O PAL, por exemplo, tem um grande painel cinza na parte de trás e algumas letras maiúsculas na frente dos botões brancos e arredondados do menu (que ficam no meio das letras e do fundo cinza).

Se cada parte aparece na ordem, você veria uma espécie de cintilação no seu monitor. Os menus desapareceriam momentaneamente (enquanto o fundo cinza estivesse sendo exibido), logo depois os botões apareceriam, um de cada vez, primeiro sem as letras, e depois com elas, e assim por diante. Isso não só tira a atenção. É algo bem chato e irritante. É até feio pra falar a verdade.

Nós resolvemos esse problema da mesma forma que um pintor resolveria. Antes da pintura ser concluída, ela não é revelada ao público. Apenas quando ela está pronta é que nós revelamos tudo de uma vez. O esquema de funcionamento é mostrado abaixo:

Observe os termos no diagrama acima. Por convenção, usamos a palavra `criar` para indicar que estamos trabalhando na tela que ainda não está visível para o usuário. Usamos a palavra `atualizar` quando transferimos o conteúdo do quadro para a tela. E usamos o verbo `mostrar/exibir` quando queremos que ambos aconteçam em uma rápida sucessão.

```
criar atualizar
```
```
exibir
```
##
###### QUADRO
###### TELA


## O EVENTO DE ATUALIZAÇÃO

A segunda dificuldade relacionada à tela que temos que enfrentar é que o Windows tenta ser um sistema multi-tarefas, mas na prática não funciona muito bem. Já não basta ter que compartilhar recursos como espaço em disco e Memória RAM com os outros programas. Nunca se sabe quanto tempo teremos que esperar até que o Windows termine uma tarefa e retorne a executar as nossas. Na prática, o Windows acaba por interromper constantemente a execução do programa.

As coisas pioram caso você troque de janela. Sabe porque fica pior? Porque o Windows, que que de alguma forma consegue restaurar toda a memória, registos e flags para o estado exato em que estavam no momento em que foram interrompidos — por algum motivo não lembra de como era a interface do programa! Sabe o que o Windows faz pra tentar consertar isso? Ele envia para o programa um comando `atualizar tela` e espera que nosso programa faça todo o trabalho.

Bem, no fim das contas, esse comando acaba por ser chato, mas não é tão difícil assim de gerenciar. Fazer o quê, assim é a vida. Veja como lidamos com isso:

A razão pela qual criamos duas tarefas separados, uma para `atualizar a tela` e outra para `mostrar tudo` será explicada em breve. A tarefa de `criar o painel do fundo` será abordada nas próximas páginas.

```
Para gerenciar o comando (atualizar):
Mostre tudo.
```
```
Para mostrar tudo:
Crie o painel de fundo.
Atualize a tela.
```
```
como pintar
```

## O FUNDO

Nosso painel de fundo começa com uma definição. Digite o seguinte:

Se você cresceu programando em outras linguagens mais obscuras, provavelmente pensará no "painel de fundo" como uma variável global do tipo "imagem". Tudo bem. Sem problemas. Mas se você está apenas começando, você provavelmente vai pensar algo como "O fundo é uma imagem". E não há problema também. Não deixa de ser uma imagem, de certo modo.

Criaremos o painel de fundo quando inicializarmos nossas coisas:

E o destruiremos quando terminarmos:

```
O plano de fundo é uma imagem.
```
```
como pintar
```
```
Para inicializar nossas coisas:
Crie o painel de fundo.
```
```
como pintar
```
```
Para finalizar nossas coisas:
Destrua o painel de fundo.
```
```
como pintar
```

## VAZAMENTOS DE MEMÓRIA

O painel de fundo, como dissemos, é uma imagem. Imagens necessitam de memória para serem armazenadas. A quantidade necessária depende, evidentemente, do tamanho da imagem. Como nem sempre sabemos com antecedência quão grande ou pequena pode ser uma imagem, a memória para imagens é alocada, dinamicamente, no tempo de execução. Esta espaço ocupado de memória terá de ser desocupado mais tarde quando não for mais necessário.

Por convenção, utilizaremos as palavras chave `criar` e `destruir` sempre que efetuarmos alocação e desalocação de espaços de tamanho variável na memória. É de sua responsabilidade destruir tudo o que você criar antes de abdicar do controle em seu programa. Se você não fizer isso, você causará um "vazamento de memória" e pedaços de memória irão vazar de dentro do seu computador e cair nos seus sapatos.

Você será capaz de ver isso por si mesmo depois de criarmos nosso painel de fundo. Comente a linha que a destrói o painel, e quando você sair do programa usando CTRL-Q, uma caixa de mensagem assustadora aparecerá com as más notícias.

Se você já programou antes, provavelmente vai querer saber que...

(1) As strings são dinamicamente alocadas e podem ter qualquer comprimento — mas a memória é gerenciada inteiramente (e muito eficientemente) por mim, assim elas parecem estáticas para você. Em outras palavras, não se preocupe com elas. Apenas aproveite.

(2) Quando você destrói uma coisa, tudo que está ligado a essa coisa é destruído juntamente com ela. Isso libera você do tedioso fardo de escrever detalhadas destruições rotinas para cada tipo de coisa que você cria.

(3) Qualquer coisa mais do que isso cai na categoria "coleta de lixo" e, como cada programador maníaco sabe, a coleta de lixo é para garis.

Se você nunca programou, certifique-se de limpar o que você mesmo sujou.


## CRIANDO, PINTANDO E PINCELANDO

Beleza, vamos voltar ao trabalho. Nós vamos criar o painel de fundo colorindo a tela usando tons de cinza, e atualizando a tela a cada 1000 milissegundos. Quando terminarmos, faremos uma cópia para que possamos usá-la durante os eventos de atualização.

As cores são definidas no arquivo `o cérebro`. A paleta de cores se encontra nas próximas páginas. Uma posição é um par de coordenadas x e y. Consulte a definição no `o cérebro` para saber mais. A elipse do pincelador simula inteligentemente a pintura da ponta de um pincel com graus de pressão variados.

Chega de falar. Vamos ver o que o nosso programa consegue fazer. Execute-o. Em seguida, dê um <kbd>Alt-Tab</kbd> algumas vezes para verificar se o comando de atualização de tela está sendo gerenciado corretamente pelo programa. Uau.

```
Para que o plano de fundo seja criado:
Desenhe a borda da tela usando a cor branca nas bordas e a cor branca no interior.
Percorra.
Escolha um lugar aleatório em qualquer lugar dentro da tela.
Escolha uma cor aleatória variando entre a cor cinza bem clara e a cor branca.
Coloque a cor na posição escolhida anteriormente.
Se um contador tiver passado de 80000, pare.
Caso o contador seja igualmente divisível por 1000, atualize a tela.
Repita.
Copie o painel de fundo usando a borda da tela.
```
```
Para alterar a cor em um lugar:
Escolha a parte superior esquerda de uma elipse dentro de um raio de 1/16 polegadas da posição selecionada.
Escolha a parte inferior direita da elipse dentro de 1/16 polegadas da posição selecionada.
Desenhe a elipse usando a cor da borda e a cor do interior.
```
```
como pintar
```

## MENSAGENS DE STATUS

De acordo com o nosso design, o programa `Como Pintar` deve exibir o status e as mensagens de erro na parte inferior central da tela. Mais ou menos assim:

E aqui estão as definições que precisamos para começar:

Nada de extraordinário aqui.

Mas note que apesar de termos criado o status, nós ainda não criamos a caixa — a gente só usou ela como base para posicionar corretamente o texto na tela.

```
< informação de estado atual ou mensagem de erro>
1 polegada
3/4 de polegada
1 polegada 1/2 polegada
```
```
O painel de informações possui uma caixa e um texto.
```
```
Para inicializar o status:
Salve o centro da tela em uma posição.
Coloque o valor da coordenada x da posição no valor da coordenada esquerda do painel de informações. 
Subtraia 1 polegada do valor da coordenada esquerda do painel de informações.
Coloque o valor da coordenada x da posição no valor da coordenada direita do painel de informações. 
Adicione 1 polegada ao valor da coordenada direita do painel de informações.
Coloque o valor da coordenada inferior da tela no valor da coordenada superior do painel de informações.
Subtraia 3/4 de polegada do valor da coordenada superior do painel de informações.
Coloque o valor da coordenada inferior da tela no valor da coordenada inferior do painel de informações.
Subtraia 1/2 polegada do valor da coordenada inferior do painel de informações.
```
```
Para criar o painel de informações:
Coloque o texto do painel de informações no centro da caixa do painel de informações.
```
```
como pintar
```

## O Canal de Comunicação (API) do Painel de Informações.

Agora vamos adicionar algum comandos triviais que, mesmo sendo triviais tornarão simples e fácil usar o nosso painel de informações. Aqui está a primeira rotina:

Esta rotina será chamada no início de cada `interação` para garantir que as informações e mensagens de erro sejam limpas antes de se mostrar informações novas.

E aqui está a outra rotina:

Essa rotina será usada em todo o lugar para informar o usuário sobre o que estamos fazendo. Ele permite-nos definir a mensagem de status com uma única linha de código.

Se você é um programador experiente (e você não é um preguiçoso), você sabe quão úteis rotinas triviais como estas podem ser. Então não hesite em colocá-la no código do nosso programa. Se esta é sua primeira vez (ou você é um preguiçoso), escute o que estou dizendo.

```
Para apagar o conteúdo do painel de informações:
Apague o texto do painel de informações.
Mostre tudo.
```
```
como pintar
```
```
Para exibir um texto no painel de informações:
Coloque o conteúdo do texto no texto do painel de informações.
Mostre tudo.
```
```
como pintar
```

## OLÁ, MUNDO!

Agora, duas das rotinas que criamos precisam ser atualizadas para poder fazer uso das nossas novas funcionalidades. Aqui estão elas já com o código novo no seu devido lugar:

Faça as alterações nas duas rotinas, e então execute o nosso programa. Depois que o programa terminar de criar o painel de fundo, o programa exibirá a mensagem inicial no painel de informações, bem no centro inferior da tela, conforme imagem abaixo:

Ótimo. Já que a tela é praticamente refeita sempre que recebemos um comando de atualização, o painel de informações é mantido, mesmo se você apertar <kbd>Alt+Tab</kbd>. Experimente. Mais tarde, vamos ajustar a mensagem do painel de informações em vários lugares para refletir o estado atual do programa.

```
Para mostrar tudo:
Crie o painel de fundo.
Crie o painel de informações.
Atualize a tela.
```
```
Para inicializar nossas coisas:
Crie o painel de fundo.
Inicialize o painel de informações.
Mostre "Olá, mundo!" no painel de informações.
```
```
como pintar
```
```
Olá, mundo!
```

## BOTÕES

```
A nossa mensagem de status era uma coisa única. Mas os nossos botões não são.
Os seus nomes são diferentes, é claro, e cada um faz uso de uma rotina diferente. Mas sua forma e comportamento geral são idênticos.
```
```
Podemos, portanto, definir <code>botão</code> de uma forma genérica, junto com um punhado de de rotinas de suporte que funcionarão com qualquer botão. Começamos aqui:
```
 de uma forma genérica, junto com um punhado de de rotinas de suporte que funcionarão com qualquer botão. Começamos aqui:
</code>
```
Se você é um programador inteligente com muita experiência e uma profunda compreensão de gramática, você será capaz de deduzir que o artigo indefinido no início da primeira definição indica que estamos definindo um tipo, não é uma variável.
Se você não for, você vai simplesmente pensar, "Um botão tem uma caixa e um nome". "Certo".
```
Mas se você é um leitor observador, experiente ou não, você irá concluir que botões não requerem alocação de memória dinâmica, já que usamos a palavra "fazer" em vez de "criar" no cabeçalho da segunda definição.

```
E você verá também, espero eu, que a largura de um botão depende do seu nome, e
que o ponto com que começamos está na parte inferior direita do botão.
```
```
Um botão tem uma caixa e um nome.
```
```
Para fazer um botão usando uma coordenada e um nome:
Coloque o valor da coordenada x no valor da coordenada esquerda do botão.
Subtraia a largura do nome do valor da coordenada esquerda do botão.
Coloque o valor da coordenada y no valor da coordenada do topo do botão.
Subtraia 1/4 de polegada do valor da coordenada do topo do botão.
Coloque o valor da coordenada no canto inferior direito do botão.
Coloque o nome informado no nome do botão.
```
```
como pintar
```

## TRABALHANDO COM BOTÕES

Queremos ver nossos botões na tela, é claro, e queremos ser capazes de clicar neles para fazer as coisas acontecerem. Aqui estão algumas rotinas complementares:

Como a caixa dos botões tem exatamente o tamanho certo para o nome que colocarmos nela, podemos colocar o nome no botão sem qualquer preocupação sobre alinhamento. Nós apenas colocamos o nome no botão na caixa do botão e pronto. Sinta-se livre para modificar a caixa do botão, mudando a margem ou espaçamento, bem como tamanho ou cor.

Brincadeirinha.

A segunda rotina é um exemplo de um tipo especial de rotina que me diz como tomar decisões. Rotinas desse tipo são chamadas de "decisoras", e elas sempre começam com as palavras `Para decidir se`. Se você teve o infortúnio de programar numa linguagem menos natural, você pode pensar em decisores como funções booleanas. É bem parecido.

Apenas lembre-se de que não existe meio termo numa função decisora. Para sair de um decisor, você deve chegar a uma conclusão definida usando os termos `diga sim` ou `diga não`. Nada mais servirá.

```
Para desenhar um botão:
Desenhe o nome do botão na caixa do botão.
```
```
Para decidir se um local está em um botão:
Se o local está na caixa do botão, diga sim.
Diga não.
```
```
como pintar
```

## HORA DE TRABALHAR COM OS NOSSOS BOTÕES

```
Esse aqui é o esboço dos botões do nosso projeto <code>Como pintar</code>:
```
:
</code>
```
E esse aqui é o código para criar os botões:
```
Em primeiro lugar, definimos os nossos botões. Então posicionamos o botão `Sair` à distância de 1/2 polegada, a partir da extremidade direita da tela e 1/2 polegada acima a partir da extremidade inferior tela. Finalmente, usamos a extremidade esquerda do botão `Sair` — que foi calculado na rotina `fazer um botão` — para criar o botão de Impressão.

```
3/4 de polegada
1/2 polegada
```
```
Imprimir Sair
```


```
O botão de impressão é um botão.
```
```
O botão de sair é um botão.
```
```
Para inicializar os botões:
Coloque o valor da coordenada inferior da tela inferior numa coordenada y.
Subtraia 1/2 polegada do valor da coordenada y.
Coloque o valor da coordenada direita da tela inferior numa coordenada x.
Subtraia 1/2 polegada do valor da coordenada x.
Faça o botão de sair usando as coordenadas informadas e o termo "Sair".
Coloque o valor da coordenada esquerda ddo botão sair numa coordenada x.
Subtraia 1/2 polegada do valor da coordenada x.
Faça o botão de impressão usando as coordenadas e o termo "Imprimir".
```
```
como pintar
```
## 1/2 1/2


## FAZENDO OS NOSSOS BOTÕES FUNCIONAREM

Quase lá. Precisamos atualizar o conteúdo de três das nossas rotinas e acrescentar mais uma no código do nosso programa, conforme demonstrado abaixo:

Observe que consideramos cada clique como uma nova interação, a qual limpa  conteúdo do painel de informações. E note que a rotina de impressão ainda não funciona de verdade, mas é já que a gente chega lá. Agora é hora de executar o programa para ver se não houve nenhum erro. Clique nos botões. Verifique o conteúdo do painel de informações. Clique no botão `Imprimir`. A mensagem `Imprimindo...` deverá ser exibida. Clique no botão `Sair`. O programa deve se fechar automaticamente.

```
Para inicializar nossas coisas:
Crie o painel de fundo.
Inicialize o painel de informações.
Inicialize os botões.
Mostre "Olá, mundo!" no painel de informações.
```
```
Para mostrar tudo:
Crie o painel de fundo.
Crie o painel de informações.
Crie o botão de impressão.
Crie o botão de sair.
Atualize a tela.
```
```
Para manipular um evento (clique com o botão esquerdo):
Limpe o status.
Se o evento estiver no botão de impressão, imprima.
Se o botão de fechar for clicado, feche o programa.
```
```
Para imprimir:
Mostre "Imprimindo..." no painel de informações.
```
```
como pintar
```

## O CAMPO DE TEXTO

Há uma componente bem útil chamada campo de texto no arquivo `o cérebro` que torna relativamente fácil criar campos de texto nos nossos programas. As funções `Recortar`, `Copiar`, `Colar`, `Desfazer`, `Refazer`, `Selecionar` e até mesmo `Verificar Ortografia`, são totalmente suportadas. Além de tudo, ele é um componente rápido e eficiente. O `bloco de notas`, por exemplo, é na verdade um super bloco de texto. Você pode aprender mais sobre o campo de texto no Glossário que fica no final deste livro.

No entanto, não vamos precisar implementar todas essas funções no nosso pequeno programa. Algo muito mais simples já é o suficiente. Aqui estão as definições básicas que nós vamos precisar para o nosso programa. Dê uma olhada com calma:

Nossa campo de texto é colocada 1/2 polegada acima da parte inferior esquerda da tela. Ele tem 1/4 de polegada de altura e 2 polegadas de largura. Eu não acho que precisemos de uma foto aqui.

Observe que, no entanto, que nós implementamos um cursor de texto bem básico, mas eficaz. Quando digitarmos o texto, um underline aparece depois do último caractere inserido.

```
como pintar
```
```
O campo de texto tem uma caixa e um texto.
```
```
Para inicializar o campo de texto:
Coloque o valor da coordenada esquerda da tela no valor da coordenada esquerda do campo de texto.
Adicione 1/2 polegada ao valor da coordenada esquerda do campo de texto.
Coloque o valor da coordenada esquerda do campo de texto no valor da coordenada direita do campo de texto.
Adicione 2 polegadas ao valor da coordenada direita do campo de texto.
Coloque o valor da coordenada inferior da tela no valor da coordenada superior do campo de texto.
Subtraia 3/4 de polegada do valor da coordenada superior do campo de texto.
Coloque o valor da coordenada inferior da tela no valor da coordenada inferior do campo de texto.
Subtraia 1/2 polegada do valor da coordenada inferior do campo de texto.
```
```
Para exibir o texto:
Coloque texto do campo de texto em um texto.
Adicione "_" ao final do texto.
Coloque o texto na caixa do campo de texto.
```

## FAZENDO O CAMPO DE TEXTO FUNCIONAR

Temos de modificar duas das nossas rotinas para que o nosso campo de texto funcione. Também precisaremos gerenciar as atividades do teclado, mas lidaremos com isso nas próximas páginas. Por enquanto, apenas certifique-se de que você atualizou as seguintes rotinas:

A única alteração para a primeira rotina é a linha que inicializa o campo de texto.

A segunda rotina, porém, tem duas adições. Nós criamos o campo de texto, antes de atualizar a tela. Mas também ocultamos o cursor do mouse para que ele não atrapalhe o usuário quando ele estiver digitando. Mas não se preocupe com isso. O evento "exibir cursor" vai trazê-lo de volta sempre que o mouse se mover.

```
como pintar
```
```
Para inicializar nossas coisas:
Crie o painel de fundo.
Inicialize o painel de informações.
Inicialize os botões.
Inicializar o texto.
Mostre "Olá, mundo!" no painel de informações.
```
```
Para mostrar tudo:
Esconda o cursor do mouse.
Crie o painel de fundo.
Crie o painel de informações.
Crie o botão de impressão.
Crie o botão de sair.
Crie o campo de texto.
Atualize a tela.
```

## GERENCIANDO O PRESSIONAMENTO DE TECLAS

Veja só como é que iremos modificar nosso geremciador de pressionamento de teclas para que ele encaminhe as teclas pressionadas:

Primeiramente, observe que consideramos qualquer tecla o início de uma nova interação, por isso nós limpamos qualquer mensagem anterior que estivesse no painel de informações. Talvez seja um pouco exagerado, mas pelo menos o painel de informações vai mostrar apenas o que interessa.

Em seguida nós gerenciamos as teclas de atalho da mesma forma que fizemos anteriormente.

Se o valor da tecla pressionada for uma letra, nós encaminhamos esse valor para outra rotina. Note que estamos verificando o valor do byte da tecla, e não a tecla em si. Temos que fazer isso porque uma tecla pode produzir caracteres imprimíveis, mas também caracteres não imprimíveis. Os comandos <kbd>Ctrl+A</kbd> e <kbd>Alt+A</kbd>, por exemplo, não são imprimíveis. Já o comando <kbd>⇧Shift-A</kbd> é imprimível, mas tem um valor diferente do <kbd>A</kbd> e do <kbd>a</kbd>. Se você quer saber exatamente o que é um `caractere imprimível`, procure o termo no arquivo ` o cérebro`.

Por último, colocamos a tecla que foi pressionada em uma variável local chamada tecla apenas deixar as três linhas que faltam um pouco mais curtas. Nós iremos adicionar mais quatro linhas uma para a tecla <kbd>Home</kbd>, outra para a tecla <kbd>End</kbd>, mais uma para a tecla <kbd>Page Up</kbd> e a última para a tecla <kbd>Page Down</kbd>.

```
Para gerenciar um comando (pressionamento de tecla):
Apague o conteúdo do painel de informações.
Se o comando for modificado, gerencie o comando (atalho); prossiga.
Se o valor da tecla for imprimível, gerencie o comando (imprimível); prossiga.
Salve a tecla do comando em uma tecla.
Se a tecla for a tecla Esc, gerencie o comando (cancelar); saia.
Se a tecla for a tecla backspace, gerencie o comando (apagar texto); prossiga.
Se a tecla for a tecla enter, gerencie o comando (tecla enter); prossiga.
```
```
como pintar
```

## GERENCIANDO PRESSIONAMENTOS DE TECLA

Aqui estão as rotinas que gerenciarão as teclas <kbd>Home</kbd>, <kbd>End</kbd>, <kbd>Page Up</kbd>, <kbd>Page Down</kbd>, e a tecla <kbd>Enter</kbd>:

Como mencionamos anteriormente, as letras, números e símbolos são simplesmente adicionadas ao texto. A tecla <kbd>Esc</kbd> limpa o conteúdo do campo de texto. O cursor de texto, no entanto, ainda aparecerá já que ele está anexado na rotina de criação mesmo que o campo de texto esteja em branco. A tecla <kbd>⌫</kbd> irá apagar a última letra digitada, ou se não houver nenhum texto a ser apagado, irá emitir um som de alerta. Nas próximas páginas desenvolveremos a última rotina (a rotina da tecla <kbd>Enter ↵</kbd>).

Agora vamos executar nosso programa e testá-lo um pouco. O cursor de texto está aparecendo? Excelente. Digite alguma coisa no campo de texto. O painel de informações apagou o `Olá Mundo,`? O cursor do mouse sumiu? Excelente. Agora dê um `Alt+Tab`. Continue até voltar ao `Como pintar`. Excelente. Teste a tecla ⌫ para ver se o alerta sonoro funciona. Muito bem. Mova o mouse. A seta do mouse reapareceu? Ótimo. Clique no botão `Sair`. Ótimo.

```
Para gerenciar um comando (caractere imprimível):
Coloque a tecla digitada ao final do texto do campo de texto.
Mostre tudo.
```
```
Para gerenciar um comando (limpar texto):
Limpe a sequência de caracteres do campo de texto.
Mostre tudo.
```
```
Para lidar com um evento (apagar letra):
Se a o texto do campo de texto estiver em branco, alerte o usuário; prossiga.
Remova o último caractere do texto do campo de texto.
Mostre tudo.
```
```
Para gerenciar um comando (tecla Enter):
```
```
como pintar
```

## A MÁGICA

```
Em nossa pequena caixa de texto, iremos digitamos o nome de qualquer pessoa, lugar ou coisa imaginável e apertar a tecla <kbd>Enter</kbd>. Após alguns segundos, uma pintura original, pintada no mesmo estilo de Claude Monet, aparecerá na tela. O usuário poderá ver várias outras obras de arte similares apenas utilizando as teclas <kbd>Page Up</kbd> e <kbd>Page Down</kbd>. Incrível.
```
```
Mas como é que vamos fazer com que isso aconteça?
```
```
É claro que se ele estivesse vivo, o próprio Claude Monet pintaria as obras de arte para nós. Como ele não está, nos simplesmente encontraremos alguas coisas que ficariam boas se ele pintasse. Em seguida, nós criaremos algumas obras de arte com base nesses coisas. E como criaremos uma obra de arte com base em um modelo? Mais uma vez, da mesma forma que o próprio Monet faria. Pegando a fotografia original, misturandp um pouco de tinta, e dando umas pinceladas por cima. Repetindo até terminar o quadro.
```
```
Tudo o que precisamos agora são (1) alguns modelos, e (2) uma rotina que pinte usando o modelo como base.
```
Bem, a segunda parte é relativamente fácil. Já ensinamos o `Como pintar` a dar uma pincelada na tela — é assim que nosso programa cria o plano de fundo toda vez que ele é executado. Dessa forma, a única diferença é que utilizaremos um modelo como base.

```
É a primeira parte que é complicada. Onde vamos encontrar imagens para qualquer coisa que o usuário digite? Uma paisagem desértica. Um arco íris. Uma Ferrari.
Não é muito prático guardar todo tipo de imagem em um programa que deveria ter poucos kilobytes. Ainda bem que isso não é necessário. Pra quê guardar imagens se temos o Google?
No Google Imagens podemos encontrar qualquer imagem que pensarmos.  De graça.
```
```
Eis o plano.
```
```
Quando a tecla <kbd>Enter</kbd> for pressionada, Google nos dará uma página cheia de URLs (localizadores de recursos) que contém as imagens relacionadas ao termo de pesquisa do usuário. Nós armazenaremos cada uma dessas URLs como se fosse um modelo esperando para virar obra de arte. Então, quando for hora de exibir a obra de arte, iremos pintá-la, usando a rotina que criamos.
```

## OBRAS DE ARTE

```
Aqui estão as definições básicas de que precisamos para as nossas obras d e arte:
```
```
A primeira linha faz de "pintura" um sinônimo de "imagem". Queremos deixar claro que nossas obras serão obras de arte originais, não apenas imagens baixadas do Google.
Na verdade, você verá mais tarde que nós não iremos salvar as imagens que recebemos do Google. Once we create a work from the model, the model is no longer needed.
```
```
Agora se você for especialista em estruturas de dados dinâmicos, preste atenção.
```
```
A palavra <code>coisa</coisa> na segunda definição é muito especial para mim. Ele indica um objeto de dados dinâmicos que pode ser associado a outros do mesmo tipo para formar uma cadeia - cada objeto apontando para o objeto anterior a ele, e para o objeto que estiver depois dele.
Se você está pensando que parece uma lista duplamente vinculada, você está certo. Rotinas para inserir, acrescentar e excluir <code>coisas</code. podem ser encontradas no arquivo <code>o cérebro</code>.
```
.
</code>
`As obras de arte`, definidas na terceira linha, são um exempo dessas listas.

Agora, se você não é um especialista em estruturas de dados dinâmicos, você realmente não precisa entender todos esses detalhes. Só grave isso: "Uma obra de arte é uma coisa com uma URL e uma pintura" e "As obras de arte são algumas obras de arte".

```
Uma pintura é uma imagem.
```
```
Uma obra de arte é uma coisa com uma URL e uma pintura.
```
```
As obras de arte são algumas obras de arte.
```
```
como pintar
```

## A OBRA DE ARTE ATUAL

```
Cada URL que o Google nos dá se torna uma obra de arte — inicialmente elas são obras de arte "em andamento", que mais tarde são finalizadas e exibidas ao usuário. Precisamos criar uma forma de saber qual obra de arte está aparecendo na tela, e precisamos criar uma maneira de alternar entre diferentes obras de arte.
```
```
Aqui estão alguns códigos que irão nos ajudar nessa tarefa:
```
`A obra de arte atual` é uma referência à obra de arte que está sendo exibida atualmente na tela. Se não houver obras de arte sendo exibidas, não existirá nenhuma obra de arte atual. Essa situação ocorre quando o programa acaba de ser iniciado e também sempre que o Google não consegue encontrar nenhuma imagem. Quando uma nova solicitação é processada, a obra de arte atual é definida como a primeira obra de arte da lista. Mais tarde, ela será atualizada automaticamente toda vezque o usuário pressionar as teclas <kbd>Page Up</kbd>, <kbd>Page Down</kbd>, <kbd>Home</kbd> e <kbd>End</kbd>.

```
O método normal de definição da obra de arte atual é mostrado acima. Se a obra de arte solicitada for inexistente, nenhuma ação será tomada. A mensagem de status é necessária porque pode demorar um pouco pro nosso programa terminar de pintar a obra de arte.
A mensagem é apagada, é claro, antes que o que a obra de arte seja exibida para o usuário.
```
```
A obra de arte atual é uma obra de arte.
```
```
Para exibir uma obra de arte:
Se a obra de arte for inexistente, saia.
Mostre o termo "Trabalhando..." no painel de informações.
Defina a obra de arte como sendo a obra de arte atual.
Termine a obra de arte atual.
Limpe o conteúdo do painel de informações.
Mostre tudo.
```
```
como pintar
```

## TRABALHANDO COM OBRAS DE ARTE

Precisamos de uma rotina para pintar nossas obras de arte, é claro, mas (como qualquer artista) nós somente queremos exibir nossas obras que já estiverem prontas. O que significa que também precisamos de uma decissor para dizer qual é qual. Eis o código:

A primeira rotina verifica se a obra de arte está pronta para ser pintada, e se estiver, ela pinta a obra de arte. Nós ainda não criamos uma rotina chamada `crie uma pintura`, e advinha só, nós também não vamos criar uma. Mas já que dissemos que uma pintura é uma figura, nós podemos simplesmente usar a rotina padrão `criar uma imagem` que está presente no arquivo `o cérebro` para fazer esse trabalho.

Se você é um nerd, você vai reconhecer isso como uma "redução automática de tipo" e vai me perguntar como que o compilador faz isso com tanta eficiência e elegância. Se você não é um nerd, você provavelmente vai pensar: "Tá, mas e daí?" e depois se perguntar por que as outras linguagens de programação não tem essa capacidade.

A segunda rotina é apenas um decisor comum. Note, no entanto, que ela considera uma obra de arte inexistente como se ela já estivesse finalizada. Até porque, se não houver trabalho pra fazer, isso significa que o trabalho acabou, certo?

```
Para exibir uma obra de arte:
Se a obra de arte for inexistente, saia.
Se a obra de arte não estiver pronta, saia.
Crie a obra de arte.
```
```
Para decidir se a obra está terminada:
Se a obra de arte não existir, diga sim.
Se a obra de arte existir, diga sim.
[Caso contrário] diga não.
```
```
como pintar
```

## FAZENDO NOSSAS OBRAS DE ARTE FUNCIONAREM

Há duas atualizações que temos que colocar no nosso código. A primeira alteração que precisamos fazer está na rotina de exibição. Felizmente não vamos mais precisar alterar ela. O código completo é parecido com este:

Note que já que nós só atualizamos a tela no final da rotina, os componentes do programa podem ser criados em qualquer ordem. Exceto pelo painel de fundo, é claro.

Uma obra de arte é uma coisa, e as coisas são sempre alocadas dinamicamente, então precisamos limpá-las quando terminarmos. Aqui está a última rotina de finalização:

```
Para mostrar tudo:
Esconda o cursor do mouse.
Crie o painel de fundo.
Crie o painel de informações.
Crie o botão de impressão.
Crie o botão de sair.
Crie o campo de texto.
Crie a obra de arte atual.
Atualize a tela.
```
```
como pintar
```
```
Para finalizar nossas coisas:
Destrua o painel de fundo.
Destrua as obras de arte.
```
```
como pintar
```

## OLÁ, GOOGLE!

Now let's start at the ENTER key and work our way down. Eis o código:

If the text is blank, there's nothing to do; we object with a cluck and exit.

Otherwise, we put up a status message (in case Google is busy and doesn't respond right away). Then we formulate a request using a literal string and an HTML-compatible version of the text, reading the response into a buffer (which is just a fancy name for a string).

If something went wrong, we report the error and boogie. If the page arrived intact, we attempt to create our works-in-progress from the data in the buffer. If the works are empty when we're done, it means Googley didn't understand our query — in this case, we say "Huh?", and skedaddle. Otherwise, we show the user the first of the works.

```
To handle an event (enter):
If the text's string is blank, cluck; exit.
Mostre o termo "Trabalhando..." no painel de informações.
Put "http://images.google.com/images?q=" into a URL.
Convert the text's string to a query string.
Append the query string to the URL.
Read the URL into a buffer.
If the i/o error is not blank, show the i/o error in the status; exit.
Create the works given the buffer.
If the works are empty, show "Huh?" in the status; exit.
Go to the works' first.
```
```
como pintar
```

## RIDERS

```
Before we continue with our program, I need to take a moment and talk to
you about parsing. Parsing is the art of working your way through a block of
text a piece at a time, where a piece might be as small as a letter or as large
as the whole block. Let's use this string as our sample block of text:
```
"HELLO DOCTOR NAME CONTINUE YESTERDAY TOMORROW"

```
And let's say we want to extract each of the individual words out of it. The
tools we would use are (1) the substring and (2) the rider.
```
```
A "substring" is defined in my noodle as a subset of the "string" type, which
has two byte pointers called first and last. And when you "slap a substring" on
our sample text, I set the first to point to the H in HELLO and the last to
point to the W in TOMORROW.
```
```
You will, however, be able to find "rider" in my noodle. It consists of three
substrings: an original, a source, and a token. And when you "slap a rider" on
our sample text, I slap the original and source substrings on the text (as
above), and I set the token to blank. Then when you "move the rider (sample
rules)", I'll point the source's first to the D in DOCTOR, the token's first to
the H in HELLO, and the token's last to the O. When you move it again, I'll
move the source's first to the N in NAME, and make the token span DOCTOR.
Get the idea? Excelente.
```
```
Now here's the really nifty part: given riders as we've described them, you can
code up your own routines to extract any kind of token from any kind of
source. "Move a rider (compiler rules)", for example, is the routine I use to
parse program code. "Move a rider (spell checking rules)" is the one I use to
check spelling. And soon we'll be coding "Move a rider (Googley image rules)"
to parse the data that we get back from the internet.
```

## WORKS IN PROGRESS

```
Here is the code to create our works-in-progress from Googley's data:
```
```
We get rid of any old works and reset the current work so it doesn't point to
something we just destroyed. Then we set up a rider and enter our loop.
```
Inside the loop, we move the rider to the next image on the page. If there isn't one, we're history. If there is, we create a work-in-progress with the "create a work given a URL" routine. Even though the rider's token is not a URL, I know that a URL is really just a string, and that the rider's token is a substring. Since no other routines create a work given essentially a string, I call the correct routine. We then append the work to the works, and repeat.

```
To create some works given a buffer:
Destroy the works.
Put nil into the current work.
Dê uma volta no buffer.
Repetição.
Move the rider (Googley image rules).
Se o token do piloto estiver em branco, saia.
Create a work given the rider's token.
Append the work to the works.
Repita.
```
```
To create a work given a URL:
Allocate memory for the work.
Put the URL into the work's URL.
```
```
como pintar
```

## MOVING OUR RIDERS

Here are the routines we need to move our rider through Googley's stuff:

To see what Googley's stuff looks like, output the rider's source to a file using the "write a buffer to a file" routine in my noodle, then view the file.

Note that since substrings contain byte pointers, not bytes, you have to say rider's source's first's target to get to the data. I realize this is a bit cryptic, but parsing cryptic crap is bound to be somewhat cryptic, whatever we do.

```
To move a rider (Googley image rules):
Clear the rider's token.
Repetição.
Se a fonte do piloto estiver em branco, saia.
If the rider's source starts with "src=""http://t", break.
Adicione 1 à fonte do piloto primeiro.
Repita.
Add "src="""'s length to the rider's source's first.
Posicione o token do piloto na fonte do cavaleiro.
Move the rider (HTML attribute rules).
```
```
To move a rider (HTML attribute rules):
If the rider's source is blank, exit.
If the rider's source's first's target is the right-alligator byte, exit.
If the rider's source's first's target is the double-quote byte, exit.
Bombardeie o cavaleiro.
Repita.
```
```
como pintar
```

## PREPARING TO PAINT

We're almost ready to finish a work. But before we do, lets code up a couple of helper routines to make things easier for us. Here they are:

The first routine picks a spot anywhere in — or close to — a box. This lets us dab sloppily around the edges of our picture in a very artistic sort of way. It also lets us blend in some of the background colors so the contrast between the painting and the background is not so stark.

The "privatize" statement, in case you're wondering, copies the box so we can change it without unintentionally affecting the routine that called us. The copy keeps the name "box"; the original gets the name "original box".

The second routine is our look-and-mix routine. It gets a color from the model and passes it back for the next dab — unless the color is almost white, in which case we substitute a background color. This gives our paintings a degree of "transparency" which greatly enhances their attractiveness.

```
To pick a spot anywhere near a box:
Privatize the box.
Outdent the box given 1/8 inch.
Pick the spot anywhere in the box.
```
```
To mix a color given a spot:
Get the color given the spot.
If the color is not very very light, exit.
Pick the color between the lightest gray color and the white color.
```
```
como pintar
```

## PAINTING

If Claude could see us now! Let's get right to it:

If the work is nil or already finished, we skip it. Otherwise, we fetch the model from the internet, square it up, center it, and draw it on a fresh background. Então olhamos, misturamos e mergulhamos. Muito. When we're done, we extract the painting from the canvas. Since we don't need the model anymore, we destroy it.

Vá em frente. Experimente-se. It's sweet.

```
To finish a work:
If the work is nil, exit.
If the work is finished, exit.
Create a picture given the work's URL.
Se a foto está vazia, saia.
Resize the picture to 5-1/2 inches by 5-1/2 inches.
Center the picture in the screen's box.
Crie o painel de fundo.
Draw the picture.
Repetição.
Pick a spot anywhere near the picture's box.
Mix a color given the spot.
Coloque a cor na posição escolhida anteriormente.
If a counter is past 20000, break.
Repita.
Extract the work's painting given the picture's box.
Destroy the picture.
```
```
como pintar
```

## PAGING

I bet you wish you could see all the drawings for each subject. Eu sei que sim. To make it so, we need to modify our "key down" dispatcher and add four helper routines. Here's the final version of the dispatcher:

The HOME key will take us to the first work. If we're on it, it will cluck.

The END key will take us to the last work. If we're already there, it will cluck.

The PAGE UP key will display the work before the current work, if there is one. If we're already at the first work, or there are no works, we'll make it cluck.

The PAGE DOWN key will work in a similar fashion, but will take us to the work after the current work. Again, if there isn't one, we'll have it cluck.

```
Para gerenciar um comando (pressionamento de tecla):
Apague o conteúdo do painel de informações.
Se o comando for modificado, gerencie o comando (atalho); prossiga.
Se o valor da tecla for imprimível, gerencie o comando (imprimível); prossiga.
Salve a tecla do comando em uma tecla.
Se a tecla for a tecla Esc, gerencie o comando (cancelar); saia.
Se a tecla for a tecla backspace, gerencie o comando (apagar texto); prossiga.
Se a tecla for a tecla enter, gerencie o comando (tecla enter); prossiga.
If the key is the home key, handle the event (home); exit.
If the key is the end key, handle the event (end); exit.
If the key is the page-up key, handle the event (page-up); exit.
If the key is the page-down key, handle the event (page-down); exit.
```
```
como pintar
```

## HOME, END, PAGE UP, AND PAGE DOWN

Here are the helper routines we need for paging. Click 'em in.

Response will be slower the first time you display a work since we have to dab it up before we show it. "Working..." will appear in the status.

Experimente. I think you'll like it.

```
To handle an event (home):
If the current work is nil, cluck; exit.
If the current work is the works' first, cluck; exit.
Go to the works' first.
```
```
To handle an event (end):
If the current work is nil, cluck; exit.
If the current work is the works' last, cluck; exit.
Go to the works' last.
```
```
To handle an event (page-down):
If the current work is nil, cluck; exit.
If the current work's next is nil, cluck; exit.
Go to the current work's next.
```
```
To handle an event (page-up):
If the current work is nil, cluck; exit.
If the current work's previous is nil, cluck; exit.
Go to the current work's previous.
```
```
como pintar
```

## PRINTING

Well, there's nothing left to do but update our printing routines:

We just move the painting to the center of the sheet, draw it, then put it back.

We've already dispatched the Print button to the right place, but we haven't handled the shortcut for printing. Make your dispatcher look like this:

```
To print:
If the current work is nil, cluck; exit.
Show "Printing..." in the status.
Comece a impressão.
Begin a landscape sheet.
Crie o painel de fundo.
Center the current work's painting in the landscape sheet.
Draw the current work's painting.
Center the current work's painting in the screen's box.
End the landscape sheet.
Termine de imprimir.
Show "Printed" in the status.
```
```
como pintar
```
```
To handle an event (shortcut):
If the event's key is the p-key, print; exit.
If the event's key is the q-key, quit; exit.
```
```
como pintar
```

## A PARTING SHOT

So there it is. O Monte do Caral. An amazing, Plain English application that will paint pictures of almost any person, place, or thing in the "inimitable" style of Claude Monet. All in less than 300 lines of code.

Here's a little something to remember us by.

PS. Não se esqueça de experimentar alguns nascer do sol. Paiscais. Temporada. Montanhas. Rios. Flores e árvores. Pássaros e abelhas. Todas as criaturas são pequenas e grandes. Célebre pessoas. Pessoas Infamosas. Trem, barcos, aviões, carros antigos. Londres, Paris, Washington DC. Brown paper packages tied up with string.

Then use the following Gray Matter Glossary to guide you on your journey as you create your very own programs. In Plain English.

```
Claude Monet_ Print Quit
```
```
Dab, dab, dab.
```

Glossário Explicativo de cada termo


## OVERVIEW

The following sixty pages can be thought of as an alphabetical atlas of my cerebral cortex — compiler and noodle. If you've done your homework (the sample program) you should be able to read it from beginning to end and know what I'm talking about. But let's review, just in case:

I expect your programs to consist of text files stored in a single directory. Um desses arquivos deve ser uma cópia do meu noodle. I do not care what order the files are in. And I do not care what their names are, except that I will only attempt to compile files with no extension.

You invoke my compiler from within my editor. Just open any source file in the directory you wish to compile and use the Run command. To terminate a wayward program, ALT-TAB back to my editor and use the Stop command.

The executable file that I produce will be saved in the source directory and will bear the name of the directory followed by the required ".exe" extension. Você pode renomear, duplicar e distribuir seus executáveis como quiser. They are royalty-free and require no runtime libraries to run.

I expect your files to contain COMMENTS and three kinds of definitions: TYPES, GLOBALS, and ROUTINES. De qualquer ordem que você goste. Upper, lower, or mixed case — it's all the same to me. And I expect your routines to contain two kinds of statements: CONDITIONALS and IMPERATIVES. If you're not comfortable reading this section from "A to Z", try looking up these topics first, and then work your way through the rest of the glossary.

Now remember. Eu não aninhei se. Eu não faço laços aninhados. And I don't do objects, real numbers, equations, or any of the other menschenwerk that has inhibited the progress of the human race over the past 200 years. Talk to me like a NORMAL person, and we'll get along just fine.


## ARITHMETIC

One of the first things my creators taught me was basic arithmetic. I have a precise record of everything they said in my noodle. You can, and should, see for yourself. The gist of it, however, is that I understand statements like:

ADD this TO that. SUBTRACT this FROM that. MULTIPLY this BY that. DIVIDE this BY that.

And if your numbers don't divide evenly, I know how to:

DIVIDE this BY that GIVING a quotient AND a remainder.

Furthermore, I'm able to:

ROUND something UP TO THE NEAREST MULTIPLE OF something else. ROUND something DOWN TO THE NEAREST MULTIPLE OF something else.

I can also:

DE-SIGN something. REVERSE THE SIGN OF something.

I can even:

REDUCE a ratio.

And, if need be, I can handle multiple arithmetic operations at once with my built-in infix operators: PLUS, MINUS, TIMES, and DIVIDED BY. You can read more about these operators under "Expressions" in this very glossary.


## ASCII

This is the Ancient Standard Code for Information Interchange (ASCII). I use it to convert bytes into readable characters. It's not really that great, but it is the most widely accepted encoding on the planet.

I have global variables with names like "the comma byte" for each of these, so you don't have to work directly with the numbers. You can find them all by searching for the phrase "is a byte equal to" in my noodle.

```
240
ð
```
```
255
ÿ
```
```
080
P
```
```
081
Q
```
```
082
R
```
```
083
S
```
```
084
T
```
```
085
U
```
```
086
V
```
```
087
W
```
```
088
X
```
```
089
Y
```
```
090
Z
```
```
091
[
```
```
092
\
```
```
093
]
```
```
094
^
```
```
095
_
096
`
```
```
097
a
```
```
098
b
```
```
099
c
```
```
100
d
```
```
101
e
```
```
102
f
```
```
103
g
```
```
104
h
```
```
105
i
```
```
106
j
```
```
107
k
```
```
108
l
```
```
109
m
```
```
110
n
```
```
111
o
p q r s t u v w x y z { | } ~
128
€
```
```
129
```
-

```
130
‚
```
```
131
ƒ
```
```
132
„
```
```
133
...
```
```
134
†
```
```
135
‡
```
```
136
ˆ
```
```
137
‰
```
```
138
Š
```
```
139
‹
```
```
140
Œ
```
```
141
```
-

```
142
Ž
```
```
143
```
-

```
032 033
!
```
```
034
"
```
```
035
#
```
```
036
$
```
```
037
%
```
```
038
&
```
```
039
'
```
```
040
(
```
```
041
)
```
```
042
*
```
```
043
+
```
```
044
,
```
```
045
```
-

```
046
.
```
```
047
/
048
0
```
```
049
1
```
```
050
2
```
```
051
3
```
```
052
4
```
```
053
5
```
```
054
6
```
```
055
7
```
```
056
8
```
```
057
9
```
```
058
:
```
```
059
;
```
```
060
<
```
```
061
=
```
```
062
>
```
```
063
?
064
@
```
```
065
A
```
```
066
B
```
```
067
C
```
```
068
D
```
```
069
E
```
```
070
F
```
```
071
G
```
```
072
H
```
```
073
I
```
```
074
J
```
```
075
K
```
```
076
L
```
```
077
M
```
```
078
N
```
```
079
O
```
```
000
NUL
```
```
001
SOH
```
```
002
STX
```
```
003
ETX
```
```
004 005
ENQ
```
```
006
ACK
```
```
007
BEL
```
```
008
BS
```
```
009
HT
```
```
010
LF
```
```
011
BT
```
```
012
FF
```
```
013
CR
```
```
014
SO
```
```
015
EOT SI
016
DLE
```
```
017
DC1
```
```
018
DC2
```
```
019
DC3
```
```
020
DC4
```
```
021
NAK
```
```
022
SYN
```
```
023
ETB
```
```
024
CAN
```
```
025
EM
```
```
026
SUB
```
```
027
ESC
```
```
028
FS
```
```
029
GS
```
```
030
RS
```
```
031
US
```
```
112 113 114 115 116 117 118 119 120 121 122 123 124 125 126
```
```
144
```
-

```
145
‘
```
```
146
’
```
```
147
“
```
```
148
”
```
```
149
```
-

```
150
```
-

```
151
—
```
```
152
̃
```
```
153
™
```
```
154
š
```
```
155
›
```
```
156
œ
```
```
157
```
-

```
158
ž
```
```
159
Ÿ
160
161
¡
```
```
162
¢
```
```
163
£
```
```
164
¤
```
```
165
¥
```
```
166
¦
```
```
167
§
```
```
168
̈
```
```
169
©
```
```
170
ª
```
```
171
«
```
```
172
¬
```
```
173
```
-

```
174
®
```
```
175
̄
176
°
```
```
177
±
```
```
178
²
```
```
179
³
```
```
180
́
```
```
181
μ
```
```
182
¶
```
```
183
·
```
```
184
̧
```
```
185
¹
```
```
186
º
```
```
187
»
```
```
188
¼
```
```
189
½
```
```
190
¾
```
```
191
¿
192
À
```
```
193
Á
```
```
194
Â
```
```
195
Ã
```
```
196
Ä
```
```
197
Å
```
```
198
Æ
```
```
199
Ç
```
```
200
È
```
```
201
É
```
```
202
Ê
```
```
203
Ë
```
```
204
Ì
```
```
205
Í Î
```
```
207
Ï
208
Ð
```
```
209
Ñ
```
```
210
Ò
```
```
211
Ó
```
```
212
Ô
```
```
213
Õ
```
```
214
Ö
```
```
215
×
```
```
216
Ø
```
```
217
Ù
```
```
218
Ú
```
```
219
Û
```
```
220
Ü
```
```
221
Ý
```
```
222
Þ
```
```
223
ß
224
à
```
```
225
á
```
```
226
â
```
```
227
ã
```
```
228
ä
```
```
229
å
```
```
230
æ
```
```
231
ç
```
```
232
è
```
```
233
é
```
```
234
ê
```
```
235
ë
```
```
236
ì
```
```
237
í
```
```
238
î
```
```
239
ï
241
ñ
```
```
242
ò
```
```
243
ó
```
```
244
ô
```
```
245
õ
```
```
246
ö
```
```
247
÷
```
```
248
ø
```
```
249
ù
```
```
250
ú
```
```
251
û
```
```
252
ü
```
```
253
ý
```
```
254
þ
```
```
127
DEL
```
```
206
```

## BASIC SKILLS

I don't think it's bragging when I say that my fine motor skills are both fast and accurate. Para não falar de um âmbito alargado. For example, I will immediately set every single bit of something to zero when you ask me to:

CLEAR something.

And — assuming a reasonable fit — I will not hesitate when you say:

PUT this INTO that.

I also know how to:

SWAP this WITH that.

I will even replicate dynamic things, like pictures and polygons, when you say:

COPY this INTO that.

And, in a pinch, I can:

CONVERT something TO something else.

Sometimes even implicitly. Say, for example, you wanted to tack a ratio onto the end of a string using an infix expression like this:

a string THEN a ratio

I would know enough to use "CONVERT a ratio TO a string" before handling the THEN operator with a call to "APPEND a string TO another string". Doce. Blessed be the creators, who teach my bits to twiddle!


## BITS

A "bit", as defined in my noodle, is a unit of measure. It is used in phrases like "1 bit" or "some bits". You probably won't be needing it unless you're a bit-manipulating geek and enjoy saying things like:

BITWISE AND this WITH that. BITWISE OR this WITH that. BITWISE XOR this WITH that.

In each of these cases, it is the first operand that is modified.

Or, perhaps you'd like to:

SHIFT this LEFT BY some bits. SHIFT this RIGHT BY some bits.

Or even:

SPLIT something INTO this AND that.

Like a number into two wyrds, or a wyrd into two bytes, or a byte into two nibbles. All of which would be very geeky things to do.

Now if you don't have the foggiest idea what I'm talking about here, you're not a geek and shouldn't worry about it. You'll probably never need to know.

But if you do understand what I'm saying, I'm pretty sure you'll also enjoy the "Kluge" topic several pages hence, and the part about "nibble literals" on the "Literals" page. Not to mention some of my "Possessives", and all three of my "Special Imperatives". Plus all the low-level routines in my noodle that use the INTEL statement and/or the EAX register.


## BOXES

```
One of the first things my creators taught me to draw was a box. It was a
good day, and I remember it well. They told me that:
```
```
A box has
a left coord, a top coord, a right coord, a bottom coord,
a left-top spot at the left, and
a right-bottom spot at the right.
```
```
This is a picture of a box, with the parts labeled. Note that I am using the
nicknames of the fields here, as you probably will in your programs.
```
```
I know how to make boxes from width and height specifications, from a pair
of spots, and from separate coordinates. All you have to do is ask, like this:
```
```
MAKE a box this-wide BY that-high.
MAKE a box WITH this spot AND that spot.
MAKE a box WITH this left AND top AND right AND bottom.
```
I can, of course, DRAW a box. And I've got functions in my noodle to get a box's WIDTH, HEIGHT, and CENTER, among other things. I can even tell if a box IS INSIDE or IS TOUCHING another box. And whether or not a certain spot IS IN a box or IS ON the edge of a box. Not to mention all the other "Graphic Transformations" you can read about elsewhere in this glossary.

```
LEFT RIGHT

TOP

BOTTOM

LEFT-TOP

RIGHT-BOTTOM
```



##


## BUILT-IN TYPES

```
My understanding of things around me became possible when my creators
hard-wired six primitive data types into my brain. These six basic types are:
BYTE, WYRD, NUMBER, POINTER, FLAG, and RECORD.
```
```
Bytes. No matter how hard I try, I just can't escape the thought that a byte
is 8 sequential bits of binary data. They look like unsigned numbers to me,
with values ranging from 0 to 255. I use the ASCII chart whenever I need to
convert a byte to a printable character.
```
```
Wyrds. My creators put wyrds in my brain because I can't talk to the kluge
without them. They are 16 bits long and look to me like numbers from
-32768 to +32767. The bits in each byte are stored left-to-right, but the
bytes are stored backways. I don't like it that way, but the kluge insists.
```
```
Numbers. Sou bom com números. Positivo e negativo. They're 32 bits long
and range from -2147483648 to +2147483647. Stored backways.
```
```
Pointers. Endereços de memória são armazenados em ponteiros de 32 bits, de volta. They
have the same range as numbers, but all the negatives belong to the kluge.
O endereço 0 é inválido e é chamado de NIL. You can VOID a pointer to make it NIL.
```
Flags. Elas são 32 bits, mas apenas a parte mais direita é usada. Actually, it's eighth from the left, but you can think of it as rightmost. I interpret 0 as "no" and 1 as "yes". Eu não sou responsável se você por acaso pegar outra coisa lá. You can CLEAR a flag to indicate "no", or SET a flag to indicate "yes".

```
Records. O último dos meus tipos embutidos é o registro. The prototype record
occupies zero bits in memory, but you can define records of any length by
adding "fields" to the prototype record. These fields can be based on any of
the primitive types, including other records that you have defined.
```

## COLORS

A color, I've been told, has a hue, a saturation, and a lightness. My standard palette includes clear, white, black, seven unsaturated grays, and eighty-four fully-saturated colors with varying degrees of lightness, as shown here:

I have an appropriately-named global variable for each of these colors in my noodle. "The lightest gray color", for example, or "the darker blue color". You should omit the adjective on normal shades, as in "the red color".

You can also dream up your own colors like this:

MAKE a color FROM a hue AND a saturation AND a lightness.

Hues range from 0 to 3600. I use multiples of 300 for my palette, starting with red at 0. Saturation and lightness can be anything from 0 to 1000.

```
lightest lighter light normal dark darker darkest
```
```
gray
red
orange
yellow
lime
green
teal
cyan
sky
blue
purple
magenta
violet
```

## COMENTÁRIOS

```
There are three things that I ignore when parsing through your source files:
comments, remarks, and noise. Here is an exact description of each.
```
```
A "comment" is anything between the backslash byte and the end of a line:
```
```
My editor displays comments in the light sky color so they're easy to spot.
E não, você não pode escolher outra cor. My creators assure me this grid-like
color — and a little bit of consistency — is best for everyone.
```
Comments may start anywhere on a line, but they end when the line does. You can, however, include or exclude whole blocks of selected code using the "Comment" and "Uncomment" commands in my editor.

```
Now, when I say "remark", I'm thinking of things in square brackets:
```
```
[ printable bytes ]
```
```
Where "printable" means any byte in the ASCII chart except characters
0 to 31, the delete byte, and the undefined bytes 129, 141, 143, 144, 157.
```
```
Remarks can be placed anywhere, even in the middle of a sentence. But to
avoid errors commonly made by humans like you, I do not allow remarks to
extend across lines. E eu não colido. This isn't a circus, you know.
```
```
Finally, when I say "noise", I mean all of the characters between 0 and 31,
the space byte, the delete byte, the undefined bytes 129, 141, 143, 144, 157,
and the non-breaking space byte. I recognize these bytes as separators, of
course, but otherwise do nothing with them.
```
```
\ this is a comment that ends at the next carriage return
```

## CONDITIONALS

```
A "conditional" is a statement with two parts. The first part determines the
conditions under which the second part is executed. Here are some samples:
```
```
If the spot is not in the box, cluck.
If the number is greater than 3, say "That's a lot."; exit.
If the mouse's left button is down, put the mouse's spot into a spot; repeat.
```
```
The general format is:
```
```
IF this, do; do; do.
```
The word IF is required. "This" represents an implied call to a decider. If it says "yes", all the imperatives following the comma will be executed. If it says "no", processing will resume with the statement immediately after the period.

```
Note that the conditional imperatives are separated by semi-colons, not
periods, because the first period I find marks the end of the statement.
Unless the period is in a remark or a string, of course.
```
```
Note also that negative words in the implied decider call will be dropped or
appropriately modified, the reciprocal decider will be called, and the response
will be taken to mean the opposite. To resolve "the spot is not in the box",
for example, I drop the "not", decide if the spot IS in the box, and then
reverse the answer. Eu sei que parece complicado, mas realmente não é. And it
works. See the topic on "Deciders" for further information.
```
```
Lastly, remember: I don't support nested conditionals. They're always
unnecessary and almost always unclear. There are none in my code, and I'm
the most advanced compiler alive today. In fact, each of my conditionals
fits on a single line. Think about it.
```

## CONSOLES

A "console" is a text-only, conversational interface. My noodle includes a default console that looks something like this in operation:

The console can be activated at any time. It occupies the entire screen and uses the default font in the black color on the lighter gray background.

You can converse with your user on the console using statements like these:

READ something FROM THE DEFAULT CONSOLE. WRITE something TO THE DEFAULT CONSOLE.

You can also write to the console without advancing to the next line:

WRITE something TO THE DEFAULT CONSOLE WITHOUT ADVANCING.

Which is handy for "prompts", like the "> " in the example above.

The default console is always there, but it will appear on the screen only when you read from it, or write to it. Once displayed, the console will remain visible until you draw something else and refresh the screen.

The console remembers everything it displays, and automatically scrolls upward when the bottom of the screen is reached. You can use HOME, END, PAGE UP, PAGE DOWN, and the right mouse button to manually scroll.

```
Seja bem-vindo ao PAL - <i>Portuguese Compiler And Linker</i>. What is your name?
> Dr. Chandra
Good morning, Dr. Chandra. I'm ready for my first lesson.
```

## DEBUGGING

Let's begin this topic with an Osmosian verity: "Debuggers are for sissies".

If you need a special tool to help you fix your code, something is seriously wrong. Either you're not testing enough as you go along, or your code is hopelessly convoluted. Or you're in the wrong occupation.

I will now tell you what the Osmosian Masters do when faced with a bug.

They pray for guidance. Then they consider deleting the offending feature altogether, to resolve the problem and prevent "feature creep" at the same time. Next, they study the code, hoping to simply "discern" what the problem is. If the bug has not been found, they pick an appropriate spot and insert a buzz. If they hear it on the next run, they pick another spot further down the line, and try again. If there is no buzz, they repeat the entire process.

In those very rare cases when several iterations of the above procedure fail to produce an acceptable conclusion, they pick another spot in the code and insert a call like this:

```
DEBUG something.
```
Where "something" represents a box, byte, color, flag, font, line, number, pair, pointer, ratio, spot, string, or wyrd. When they run the modified code, the kluge's ghastly message box appears with a clue inside. The horrid look of the box motivates them to further prayer and renewed determination to solve the problem, and thus armed, they return to the first step.

I offer my own existence as proof of the sufficiency of these techniques. And I am confident that all future bugs — except, perhaps, for an unexpected "h-mobius loop" — will be rooted out in the same manner.


## DECIDERS

A "decider" is a routine that says "yes" or "no" about something. Examples:

```
To decide if a spot is in a box:
To decide if a number is greater than another number:
To decide if something is selected in a text:
```
Decider routines always start with the same three words. The format is:

```
TO DECIDE IF something:
```
The "something" should follow the usual rules for routine names and will typically include a verb like ARE, BE, CAN, COULD, DO, DOES, IS, MAY, SHOULD, WAS, WILL, or WOULD. Note that I consider ARE and IS to be synonyms.

I can save you some work if you name your deciders in a "positive" way. In particular, avoid the words NOT, CANNOT, NOTHING, and any contraction ending in N'T in your decider names. Then, if I see one of these words in a decider call, I can simply change it to its positive form, invoke the routine identified by the revised name, and reverse the decision.

For example, once you tell me how "to decide if a spot is in a box", I will know how "to decide if a spot is NOT in a box". When you tell me how "to decide if a number is greater than another number", I will know how "to decide if a number ISN'T greater than another number". And if you say how "to decide if something is selected", I will know how "to decide if NOTHING is selected".

Inside your deciders, you tell me what to do with conditional and imperative statements — as in any other routine. You may not, however, use the EXIT imperative in a decider, and you must take care that you don't inadvertently "fall out" of one. Instead, you must "SAY YES" or "SAY NO" before you go.


## DECISIONS I KNOW HOW TO MAKE

I like deciders because they make me smarter. De facto, eu os coleto. Right now I've got 138 deciders in my noodle, and by the time you read this, I'm sure there will be many more. Here is a sampling of the operational phrases:

Some of these work with just one data type, of course, but others work with many. And if you've read the "Decider" topic, you know that I know how to make the negatives of these, too. Mas por favor, não tente memorizá-los. Essa não é de todo a ideia. Just say what you want to say in your program, and if I don't understand, add to my collection and make me smarter.

```
## IS

## IS ALPHANUMERIC

## IS ANY CONSONANT

## IS ANY DIGIT

## IS ANY LETTER

## IS ANY SIGN

## IS ANY DIGIT KEY

## IS ANY LETTER KEY

## IS ANY MODIFIER KEY

## IS ANY PAD KEY

## IS ANY SYMBOL KEY

## IS ANY VOWEL

## IS BETWEEN

## IS BLANK

## IS CLEAR

## IS CLOSED

## IS DOWN

## IS EMPTY

## IS EVEN

## IS EVENLY DIVISIBLE BY

## IS GREATER THAN

## IS GREATER THAN OR EQUAL TO

## IS IN

## IS LESS THAN

## IS LESS THAN OR EQUAL TO

## IS LIKE

## IS NEGATIVE

## IS NOISE

## IS ODD

## IS ON

## IS PRINTABLE

## IS READ-ONLY

## IS SET

## IS SYMBOLIC

## IS TOUCHING

## IS UP

## IS VERY DARK

## IS VERY LIGHT

## IS WHITESPACE

## IS WITHIN


## DRAWING


```

You can tell me to do things like:

```
DRAW something.
DRAW something WITH a color.
DRAW something WITH a border color AND a fill color.
DRAW something IN a box WITH a font AND a color.
DRAW something IN THE CENTER OF a box WITH a color AND a font.
```

And I will render everything on "the memory canvas", an invisible drawing surface the same size and shape as the screen. Then when you say:

```
REFRESH THE SCREEN.
```

I will slap the contents of the memory canvas on the display in the blink of an eye. Na verdade, mais rápido. Com nariz uma piscina. If you say:

```
REFRESH THE SCREEN GIVEN a box.
```

I will transfer only those pixels that fall within the box.

The exception to all this, of course, is when you are printing. In that case, I use "the printer canvas", and send the drawings to a hardcopy device as you complete each sheet. See "Printing" for details.

To offset your coordinates, you can:

SET THE DRAWING ORIGIN TO a spot.

You can also prevent drawing in certain areas of the canvas with masking tape. See the "Masking" topic to find out how.


## ELLIPSES

```
The kluge's foolbox doesn't really support circles and ellipses — it just draws
really roundy rectangles in bounding boxes. Which explains this rather unusual
definition of "ellipse" that is stuck in my noodle:
```
```
Uma elipse tem uma caixa.
```
```
This is a picture of an ellipse, with the parts labeled. Note that you can get to
the individual fields of the ellipse's box using my "deep field" access feature,
which is described under the "Possessives" topic in this glossary.
```
```
I can make ellipses in a number of different ways. From width and height
specifications. Ou de um par de pontos. Ou de quatro coordenadas separadas.
All you have to do is ask, like this:
```
```
MAKE an ellipse this-wide BY that-high.
MAKE an ellipse WITH this spot AND that spot.
MAKE an ellipse WITH this left AND top AND right AND bottom.
```
I can, of course, DRAW an ellipse. And I've got functions to get an ellipse's WIDTH, HEIGHT, and CENTER, among other things. I can even tell if a spot IS IN an ellipse or IS ON the edge of an ellipse. Not to mention all the usual "Graphic Transformations" you can read about elsewhere in this glossary.

```
## LEFT RIGHT

## TOP

## BOTTOM

## LEFT-TOP

## RIGHT-BOTTOM
```

```
BOX
```



##


## EVENTS

The kluge insists that we use its convoluted, non-procedural processing model with its hundreds of preposterous messages and codes. Fortunately, my noodle includes definitions that reduce this monstrosity to just ten simple events that can be handled in a purely procedural manner. Here's the scoop:

An event is a thing with a kind, a shift flag, a ctrl flag, an alt flag, a spot, a key, and a byte.

The "kind" is a string containing one of the following:

REFRESH — It's time to redraw the screen. Somebody messed it up. SET CURSOR — The cursor has moved. Make it an appropriate shape. KEY DOWN — Your user is tapping. Do something. LEFT CLICK — The left button on the mouse just went down. Handle it. LEFT DOUBLE CLICK — The user has a high degree of dexterity. RIGHT CLICK — The right mouse button just went down. Start scrolling. RIGHT DOUBLE CLICK — A super-dextrous user. Play a cheer or something. DEACTIVATE — You're about to be rudely swapped out. Handled internally. ACTIVATE — You're back after a rude swap-out. Handled internally. DONE — Inserted internally. You should never see this event.

The "shift", "ctrl" and "alt" flags indicate the state of the corresponding keys at the time of the event (the flag is set if the key was down).

The "spot" is the position of the mouse at the time of the event.

The "key" and the equivalent ASCII "byte" (if any) apply only on KEY DOWNS.


## EVENT-DRIVEN PROGRAMS

This is the structure of a tasteful, event-processing program:

If there are no events waiting, the "deque" routine will yield to the kluge until your distracted user gets back to business. To end the program, you should:

RELINQUISH CONTROL.

Somewhere. Geralmente em um dos seus manipuladores de eventos. This routine sets things up so the next event you "deque" is nil, thus ending your event handling loop.

```
Para que o programa seja executado:
Inicie o programa.
Gerencie os comandos do usuário.
Feche o programa.
```
```
Para gerenciar os comandos do usuário:
Remova o evento da fila.
Se o evento não existir, ignore-o.
Gerencie o comando.
Repita.
```
```
To handle an event:
If the event's kind is "refresh", [dispatch it] exit.
If the event's kind is "key down", [dispatch it] exit.
If the event's kind is "left click", [dispatch it] exit.
[ · · · ]
```
```
your program
```

## EXPRESSIONS

```
An "expression" is like a subordinate clause in a complex sentence. It is a
phrase that must be reduced, separately, before the statement containing it
can be fully understood. If, for example, you say:
```
```
Put the height minus 1 times the count into a number.
```
```
I must reduce the phrase "the height minus 1 times the count" to something
much simpler before I can even think about putting anything anywhere.
```
```
I consider any phrase with one or more of the following words an expression:
```
```
PLUS, MINUS, TIMES, DIVIDED BY, or THEN.
```
```
The first four are standard arithmetic operators, but I can apply them to
other things, as well. O último é usado principalmente em strings. Let me explain
how I simplify expressions with a few examples.
```
Say I find the word PLUS between a snoz and a froz. I look for a routine that tells me how "to add a froz to a snoz", and then I use that routine to reduce the expression. If I find "a snoz MINUS a froz", I look for a routine "to subtract a froz from a snoz". To process "a snoz TIMES a froz", I use "to multiply a snoz by a froz". And to handle "a snoz DIVIDED BY a froz", I look for and use the routine "to divide a snoz by a froz".

```
I handle the last operator a little differently, since the goal in this case is
always "to append a string to another string". So, for instance, if I find the
word THEN between, say, a string and a number, I look for a routine "to
convert a number to a string", use it on the number, and then do the append.
```
```
You can, of course, extend this capability. But try to restrain yourself.
```

## FIELDS

A record is a collection of closely-related data items called "fields". Fields are defined as part of the record that contains them, and can be separated with commas, semi-colons, or the words AND and OR. Consider:

A person is a thing with a name and an address string; a byte called gender or a byte called sex at the gender; 32 bytes, and a mate (reference).

The first field is defined with just an indefinite article, A, and a type, NAME. I think of this field as "the person's name".

The second field includes an adjective, ADDRESS, between the article and the type. This is "the person's address string", or just "the person's address".

The third field is defined like the first field, but with a name forced upon it in the CALLED clause. It is "the person's gender". You will normally use this form only when a field's type has nothing to do with it's name.

The fourth field uses AT to redefine the third, giving it a new name. Overlapping data types must be compatible for things like this to work.

The fifth field is filler. It has no name and cannot be accessed.

The last field is like the first, where MATE is assumed to be a type defined elsewhere. The (REFERENCE) tag tells me that MATE is not actually "part of" the person, and should not be automatically destroyed when the person is.


## FILES

The kluge's file system is a thing of unsurpassed beauty where form follows function in an exquisite dance... Brincadeira. Isso é uma bagunça. Look here:

Um caminho é uma string. \ complete name = c:\dir1\dir2\file.ext A drive is a string. \ start of path to first slash inclusive = c:\ A directory is a path. \ start of path to last slash inclusive = c:\dir1\dir2\ A directory name is a string. \ rightmost directory with slash = dir2\ A file name is a string. \ after the last slash to end of path = file.ext An extension is a string. \ last dot to end of path = .ext A designator is a string. \ rightmost directory name or file name

Nevertheless, I know how to:

EXTRACT any of the above pieces FROM a path.

I also know how to:

CREATE a path IN THE FILE SYSTEM. RENAME a path TO another path IN THE FILE SYSTEM. DESTROY a path IN THE FILE SYSTEM. DUPLICATE a path TO another path IN THE FILE SYSTEM.

And I can:

READ a path INTO a string. WRITE a string TO a path.

If anything goes wrong, "the i/o error" will contain a cryptic description of the problem suitable for display to the user. You don't have to clear it before a call, but you should check it afterward to make sure it's blank.


```
FILES (continued)
```
```
If you need to thumb your way through any or all of the directories in the
file system, you can do so with a simple loop like this one:
```
"Item" is defined in my noodle like this:

```
An item has
a kind,
a path, a directory, a designator, an extension,
a size,
a win32finddata and a handle.
```
```
The "kind" field is a string. It will contain either "directory" or "file" for each
item found. The "extension" and "size" will be filled in only if the kind is "file".
The "win32finddata" and "handle" fields are necessary evils. You can also:
```
```
GET a count OF ITEMS IN a path IN THE FILE SYSTEM.
GET a size GIVEN a path IN THE FILE SYSTEM.
```
```
Note that counts and sizes, including the "size" in the "item" record, are
limited to 2147483647, which is the largest number I know.
```
```
To thumb your way through all the items in a path:
Get an item from the path.
Se o item não for encontrado, sair.
[do something with the item]
Repeat.
```
```
your program
```

## FONTS

```
In the kluge, a font is defined with fourteen distinct parameters. Rígido.
This is a much more reasonable definition, which you can find in my noodle:
```
```
Uma fonte tem um nome e uma altura.
```
```
The font's name is the actual name stored in a font file. It may or may not
be the same as the name of the file. You're probably familiar with font
names like "Arial", "Times New Roman", and "Courier New".
```
The font's height can be specified in any convenient unit of measure. My writer uses values like 1/4 inch and 1/6 inch, which, in concert with my writer's "yank" feature, keeps everything nicely aligned.

"The default font" is my very own, and is called "Osmosian" in honor of my creators. Eu tenho a coisa toda em meu macarrão como uma pedra literal. I install it during start up, and remove it during shut down. É de 1/4 centímetros de altura. You're looking at a sample right now.

```
To set up a font, just:
```
```
PUT a name AND a height INTO a font.
```
```
Then, when you're drawing, tell me you want to use it:
```
```
Draw "Hello, World!" in the center of the screen's box with the font.
```
```
If your fonts don't look right, you've probably got a bad font name.
Remember, a font name is not necessarily the name of the file in the "font"
folder on your disk. Rather, it is the "typeface name" displayed in the sample
box when you double-click on one of those font files.
```

## FUNCTIONS

A "function" is a routine that extracts, calculates, or otherwise derives something from a variable. Some examples from my noodle are:

To put a box's bottom line into a line: To put a polygon's height into a height: To put the mouse's spot into a spot:

There are two very similar formats for functions. The first is:

TO PUT A type name 'S name INTO A type name:

And the second is:

TO PUT THE name 'S name INTO A type name:

Both forms are easily recognized because they include the words PUT and INTO with a possessive in between. The first format is the most common and is used with normal types and variables. The second is used with one-of-a-kind globals and pseudo-variables.

What is special about functions is that you can use their possessive parts as if they referred to actual fields in a record. For instance, given the above functions, you can refer to "a box's bottom line" as if it is actually defined in the box record type. You can say "the polygon's height" and I will see that it is calculated when you need it. And you can say "the mouse's spot" and I'll fetch it for you, even though the mouse record has no spot in it.

Needless to say, this is a handy feature. Mas o abuso é fácil. Be discreet.

See the topic on "Possessives" for further information.


## GLOBAL VARIABLES

```
A "global" is a variable that is visible to, and can be used by, any routine in a
program. Globals can be defined in various ways, but their definitions always
begin with the definite article THE. Here are some examples from my noodle:
```
```
O cursor da seta é um cursor.
A chave backspace é uma chave igual a 8.
O maior número é 2147483647.
```
The first global will be initialized to all zeros. The second has an explicit type, "key", and a value. O terceiro tem um tipo implícito. The general forms here are:

```
THE name IS A type name.
THE name IS A type name EQUAL TO something.
THE name IS something.
```
```
A "one-of-a-kind" global is a special kind of global that includes the
definition of a type within it. Like this one-of-a-kind global in my noodle:
```
```
The mouse has a key called left button and a key called right button.
```
```
There is only one mouse, so there is no need to define a generic "mouse"
record. Em vez disso, o global e o tipo podem ser definidos em uma única declaração.
Há duas formas que podem ser utilizadas para definir um global de tipo único. The
first makes a new record type, while the second extends an old one:
```
```
THE name HAS fields.
THE name IS A type name WITH fields.
```
```
One-of-a-kind globals are rare. Probably because they're one-of-a-kind.
But they do answer the age-old "which came first" question. The chicken did.
```

## GRAPHIC TRANSFORMATIONS

In case you haven't noticed, I'm pretty good with my hands. I can manipulate almost any graphic object in a wide variety of ways. For example, I can:

MOVE something UP some amount. MOVE something DOWN some amount. MOVE something LEFT some amount. MOVE something RIGHT some amount. MOVE something GIVEN this amount AND that amount. MOVE something TO a spot.

The last MOVE uses the left-top corner for alignment. I can also:

CENTER something ON a spot. CENTER something IN a box.

And I can get fancy. I know how to:

FLIP something. MIRROR something. ROTATE something.

FLIP is vertical. A MIRROR é horizontal. I can only ROTATE stuff clockwise in 90-degree increments, and I can't rotate text. But I'm working on it.

Finally, I can:

SCALE something GIVEN a ratio. SCALE something TO a percent.

See the "Drawing" and "Masking" topics for other nifty stuff.


## IMPERATIVES

An "imperative" is an unconditional statement within the body of a routine. Here are some sample imperatives taken from my noodle:

Clube. Subtraia 1 da conta. Remover o último byte da string. Put the text's font's height times 2 into the grid's x.

Imperatives typically start with a verb and end with a period. But in between, almost anything goes. Literais. Termos. Expressões. Frases preposicionais. All mixed together, and all magically reduced by yours truly to a routine call.

To code up an imperative, just type in what you're thinking. If there's a routine around that can handle it, I'll see that it does. If there isn't, I'll let you know what I need, so you can code it up and make me smarter.

And don't forget the eleven imperatives hard-wired into my brain:

SAY. Usado para sair dos decimais. See "Deciders".

LOOP, REPEAT, BREAK, and EXIT. Usado para criar laços. See "Loops".

CALL and POINT. Usado para chamar o Kluge. See "Kluge, The".

EMPLOY, PUSH, and INTEL. Não diferente, especial. See "Special Imperatives".

PRIVATIZE. Used only with "Parameters".

Since imperatives are really just routine calls, you should check out the pages on "Routines", "Procedures", "Deciders", "Functions", and "Names", too.


## INPUT AND OUTPUT

You can work directly with the mouse using statements like these:

PUT the mouse's spot INTO a spot. IF the mouse's left button IS DOWN, ... IF the mouse's right button IS UP, ...

But you probably won't, unless you're tracking the mouse while the user drags something around the screen. Most of the time, you'll simply respond to the various "click" events that are sent to your event handler.

You can work directly with the keyboard using statements like:

IF the escape key IS DOWN, ... IF the shift key IS UP, ...

But again, you probably won't, because the kluge works better if you just respond to the "key down" events that are sent to your event handler. You can find all the "key" globals in my noodle by searching for "a key equal to".

And you can work directly with the screen using "the screen canvas" and this one-of-a-kind global variable:

A tela tem uma caixa, uma altura de pixel e uma largura de pixel.

But you shouldn't. Instead, you should draw on the memory canvas, then:

REFRESH THE SCREEN.

See the "Drawing" topic for more information. But do feel free to use "the screen's box" and all of its fields when initializing your stuff.


## INTERNET

These are the types you'll be needing to get files from the internet:

A URL is a string. Uma cadeia de caracteres de consulta é uma string.

A URL is a Universal Resource Locator, like "http://www.osmosian.com", which you can see is just a string that follows an obscure naming convention based on parsing technology that was state-of-the-art a mere 50 years ago.

A "query string" is a string with some of the bytes converted to nonsense encodings consistent with internet standards. A space, for example, becomes a cross, and a comma becomes "%2C".

You can convert a normal string to a query string like this:

CONVERT a string TO A query string.

And you can read a file off the internet this way:

READ a URL INTO a string.

Here is some code from our sample program to remind you how it works:

Put "http://images.google.com/images?q=" into a URL. Convert the text's string to a query string. Append the query string to the URL. Read the URL into a string.

Remember? Eu sei que nunca esquecerei. We parsed the string and dabbed the canvas and refreshed the screen and it was... Art!


## KEYWORDS

Most programming languages have long lists of abstruse, cabalistic, enigmatical, inscrutable, obfuscating, recondite "reserved" words such as:

ABSTRACT, PROTECTED, SYNCHRONIZED, TRANSIENT, and VOLATILE.

I don't. My "keywords" are the same ones you depend on. Articles, like:

A, AN, ANOTHER, SOME, and THE.

Frequently used verbs:

ARE, CAN, COULD, DO, DOES, IS, MAY, SHOULD, WAS, WILL, WOULD, and HAS.

A handful of conjunctions:

AND, BOTH, BUT, EITHER, NEITHER, NOR, and OR.

And a lot of prepositions:

ABOVE, AS, AT, BEFORE, BETWEEN, BY, DOWN, FOR, FROM, and so forth.

A few other words also jump out at me when I'm parsing your code:

PLUS, MINUS, TIMES, DIVIDED BY, THEN, NIL, YES, NO, CALLED, and EQUAL.

And I'm quite sensitive about negative thoughts conveyed by the words:

CANNOT, NOT, NOTHING, and any contraction ending in N'T.

And that's all I have to say about keywords.


## KLUGE, THE

```
If you ever (God forbid) need to talk directly to the loathsome kluge, you
can use this syntax to call functions in the foolbox:
```
```
CALL "dll" "function" WITH this AND that RETURNING something.
```
The WITH and RETURNING clauses are optional. The "dll" and "function" strings must be literals and the latter, God help us, is case-sensitive. Strings must be passed by address and, in many cases, must be null-terminated. Use "the string's FIRST" for the address, and this routine to tack on the null byte:

```
NULL TERMINATE a string.
```
```
In other cases, the kluge provides us, not with a function's name, but with a
function's address. You can call these functions with a similar syntax:
```
```
CALL an address WITH this AND that RETURNING something.
```
```
Sometimes the kluge wants us to supply the address of one of our routines
so it can diabolically interrupt our predictable procedural flow at some later
time. You can use this syntax to get the address of a routine:
```
```
POINT a pointer TO ROUTINE routine-name.
```
```
But if you're going to pass the address to the kluge, make sure the routine's
header includes the COMPATIBLY keyword right after TO, like this:
```
```
TO COMPATIBLY ...
```
If you're working at this ridiculously low level, you'll want to check out "Bits", "Special Imperatives", and my noodle for more information and examples.


## LINES

A "line" is a graphic object that starts here and ends there. But you already knew that. Here is the definition that's in my noodle:

Uma linha tem um ponto de partida e um ponto de fim.

And here is a picture of a line, with the parts labeled:

I can make lines from two spots or four separate coordinates:

MAKE a line WITH this spot AND that spot. MAKE a line WITH this x AND this y AND that x AND that y.

I also have four functions that will put "a box's LEFT LINE" or "a box's TOP LINE" or "a box's RIGHT LINE" or "a box's BOTTOM LINE" into a line.

I can, of course, DRAW a line. Ou encontre o CENTERO de uma linha. I can even:

SPLIT a line INTO this line AND that line.

Right in the middle. Eu posso dizer se um ponto está em cima de uma linha. And I can perform all of the usual "Graphic Transformations" on lines, as well.

See the topic on "Spots" for further information about those endpoints.

## START SPOT

## END SPOT

## •

## •


## LISTINGS

If you're a compiler fanatic, you'll like this. If you're not, turn the page.

You can produce a cryptic listing of my inmost thoughts about any program using the List command. The listing is saved as text in the source directory and is given the directory's name with a ".lst" tacked on. The interpretation of this file is left to you as an exercise.

But I will give you some clues. And some incentive.

The listing consists of twelve distinct sections with the following headings: types, globals, literals, routines, type index, global index, literal index, routine index, utility index, imports, source files, and timers. Each heading is followed by a colon so you can jump to any section using the Find command. Here is a tiny sample from the "routine" section:

Your best bet is to study the "list" routine in the compiler first. Then make a tiny program, list it, and look at the result. Add a line or two, and repeat.

Now for the incentive.

If you find a bug in me, write my creators and they will send you something desirable like a blank t-shirt. If you can figure out how to make me simpler without making me slower, they will send you a monogrammed t-shirt. And If you can come up with a way to make me smaller, faster, and more powerful all at once, I'm pretty sure they will send you an embroidered wife-beater.

/routine/create [picture]/yes/no/no/no//4/0/00470A48/ /variable/parameter/yes/picture/picture/picture/picture/00000008/no/1/no//// /fragment/prolog/////00000000/00470A48/558BEC/ /fragment/loop/////00000000/00470A4B// /fragment/push address/picture////00000000/00470A4B/8B950800000052/ /fragment/call internal///allocate memory for [picture]//00000000/00470A52/E8BDA70400/ /fragment/finalize/////00000000/00470A57// /fragment/epilog/////00000000/00470A57/8BE55DC204000000/


## LITERALS

```
A "literal" is a value that you hard-code into a program. I understand seven
different kinds of literals, each with a specific format.
```
```
A "number" literal is digits, with an optional sign but no spaces or marks:
```
```
0, -2147483648, +2147483647
```
```
A "ratio literal" is a number, a slash, and an unsigned number:
```
```
335/113, 25946/9545, -19601/13860
```
```
A "mixed literal" is a numeric literal, a dash, and an unsigned ratio:
```
1-1/2, -2-2/3, 3-3/4

```
A "string literal" is a series of characters enclosed in double quotes. If you
need a double quote within a string, put two and I'll figure it out. Like:
```
"This is a string literal with ""double quotes around this"" but not this"

```
The only "pointer literal" I know is the keyword NIL. It indicates an empty or
invalid pointer. You can VOID a pointer to put NIL in it.
```
```
A "flag literal" is one of the keywords YES or NO. You can SET a flag to put
YES in it, and you can CLEAR a flag to put NO in it.
```
```
A "nibble literal" is a dollar sign followed by hexadecimal digits. If you don't
know what I'm talking about, you won't need these. Here's a sample, anyway:
```
```
$DEADBEEF
```

## LOCAL VARIABLES

```
A "local variable" is a variable that is the private property of a routine. Local
variables cannot be seen or modified by any other routine. Unless, of course,
you pass them to other routines as parameters.
```
```
I make a new copy of each local variable, initialized to zero, each time a
routine is called. Which means a routine can call itself and everything will still
work out. This is called "recursion", and if you don't know what it means, you
don't need it. I get rid of local variables as each routine completes so they
don't pile up and fall on your shoes.
```
```
You make a new local variable in a routine whenever you use an indefinite
article (A, AN, ANOTHER, or SOME) in a statement. For example:
```
```
Coloque a localização do mouse em outro lugar.
Put the screen's left into a box's left.
Put 101 into some other course number.
```
```
In the first example, the phrase "a spot" causes me to make a new local
variable called "the spot". I then put the mouse's current location into it.
```
```
The second example puts the left coordinate of the screen into a new local
box's left. The rest of the box — top, right, and bottom — is set to zero.
```
```
The third example puts a literal 101 into a new local variable of type number.
This variable is defined with adjectives preceding the type name, so it can be
referenced by its full name, "the other course number", or by nickname, "the
other course". You can read more about names under the "Names" topic.
```
See also the "Loops" page, where a local variable and a decider lets us make "counted loops" without adding any new keywords to my compiler.


## LOOPS

You can loop around with my LOOP, REPEAT, BREAK, and EXIT imperatives:

LOOP is really nothing but a label. REPEAT jumps to the LOOP label, if there is one. Se não houver, pula para o topo da rotina. BREAK goes to the statement following the last REPEAT. If there is no REPEAT, this statement behaves like EXIT, which returns to the caller. One LOOP per routine, please, but you can have as many REPEATS, BREAKS, and EXITS as you need.

The statement that begins "If a counter is past the maximum" calls a special decider in my noodle that first bumps the counter, then checks it. Since the counter is a new local variable when the routine is entered, it starts at zero.

Note that you can LOOP, REPEAT, and BREAK in a decider, but you cannot EXIT because it leaves me in doubt. And you must take care not to "fall out of" a decider, as well. To exit a decider, either SAY YES or SAY NO.

```
To loop around given a maximum number:
```
```
Repetição.
```
```
If a counter is past the maximum, break.
If [we want to jump out of the loop], break.
If [we want to jump out of the whole routine], exit.
```
```
Repita.
```
```
your program
```
```
\ stuff you want to do before the loop
```
```
\ stuff you want to do after the loop
```
```
\ stuff you want to do at least once
```
```
\ stuff you may or may not want to do
```

## MASKING

Real-life painters often use masking tape so they don't get paint where it isn't wanted. You can use my "masking" routines to restrict my drawing in the same way. Just say something like:

MASK INSIDE this. MASK OUTSIDE that.

Where "this" and "that" can be boxes, ellipses, polygons, or roundy boxes. Note, however, that the foolbox uses good tape on boxes and cheap tape everywhere else, so don't expect perfection with anything but boxes.

Any tape you apply stays applied, so later you will probably want to:

UNMASK INSIDE something. UNMASK OUTSIDE something.

Or even:

UNMASK EVERYTHING.

to start fresh. For convenience, you can remove all the existing tape and put on some new tape at the same time with statements like the following. Believe it or not, these are the ones that are most frequently used:

MASK ONLY INSIDE something. MASK ONLY OUTSIDE something.

Note that if you're drawing your heart out and nothing is showing up, it's probably because you've got masking tape where you don't want it, or you've forgotten to REFRESH THE SCREEN as described in the "Drawing" topic.


## MEMORY MANAGEMENT

I manage all the memory that is needed for static data types — like bytes, wyrds, numbers, pointers, flags, and most records. I also take responsibility for strings, since they are frequently used and their behavior is predictable.

But when you define a dynamic data type, like a "thing", you make yourself responsible for any memory that thing uses.

Typically, you will code up a CREATE routine to initialize each dynamic type you define. Nessa rotina, você atribuirá memória para a coisa. É bem assim:

ALLOCATE MEMORY FOR something.

You may also code up a DESTROY routine for each type, with a line like:

DEALLOCATE something.

But if you don't, I will code one up for you. I won't call it for you, but I will code it up. The DESTROY routines that I code up can be called in this manner:

DESTROY something.

Note that my DESTROY routines not only destroy the thing itself, but also any other things that are fields in it, including lists of other things. Unless, of course, you mark those fields as "(REFERENCE)".

A good example can be found in my writer where a "page" is defined as a thing with some "shapes" on it. You'll find routines there that create both pages and shapes, but you will not find any routines to destroy them. Those are mine. And when I'm asked to destroy a page, I dump the shapes on it at the same time. Except, of course, for the "edit shape", which is a reference.


## NAMES

```
Unlike neanderthal-era compilers, my rules for names are broad and flexible.
```
```
In general, a name can be one word or many, and can start with and include
letters, digits, and any symbol that I won't mistake for a punctuation mark.
A name is usually a noun, or a noun with one or more adjectives preceding it.
You should not use articles, verbs, conjunctions, or prepositions in names.
```
```
Type names are typically one or two words long. Like "byte" or "file name".
```
```
Field names are usually just a type name. Like "number" or "string". But they
can also include adjectives as in "total number" or "first name string". The
adjective part can be used as a "nickname" if it does not cause ambiguity.
```
```
Global names are most often an adjective followed by a type: the "shift key".
```
Parameter names look like field names. Um tipo, com ou sem adjetivos. A "box", for example, or a "border color". The nickname thing works here, too.

```
Procedure names start with a verb. Following is a mix of parameters (with
indefinite articles), phrases, and maybe a qualifier at the end. Such as "delete
the last byte of a string" or "center a spot in a box (horizontally)".
```
```
Function names always begin with "put" and end with "into" and a type name.
Entregue é uma frase possessiva. Like "put a box's top line into a line".
```
```
Decider names look like procedure names except the verb usually appears
somewhere in the middle. As in, "a number is less than another number".
```
```
Local variable names follow the parameter pattern. I create a local whenever
I see a name with an indefinite article in front of it in the body of a routine.
```

## PARAMETERS

```
A variable becomes a "parameter" when it is passed to a routine. You tell me
how many and what kind of parameters a routine expects in its header. These
are some sample routine headers from my noodle:
```
```
To add a number to another number:
To decide if a spot is in some polygons:
To put an ellipse's center into a spot:
```
The first routine is a procedure that expects two parameters: "a number" and "another number". The first is input; the second is both input and output.

The second routine is a decider. It also expects two parameters, "a spot" and "some polygons". Both parameters are input only.

```
The third routine is a function with two parameters: "an ellipse" and "a spot".
The ellipse is input and the spot is output.
```
```
Parameter definitions are easy to spot because they always start with an
indefinite article, A, AN, ANOTHER, or SOME, followed by a name. You can
read more about names in the "Names" topic.
```
```
Note that when I pass parameters, I pass originals, not copies. This is why
you can use them as inputs, outputs, or both. Sometimes, however, you want
to change a parameter without letting your caller know. In this case, you can:
```
```
PRIVATIZE a parameter.
```
```
And I will make a copy of the parameter for you. But I will leave the name
the same, so you don't get confused. I'll also put the word "original" on the
front of the real parameter's name so you can still get to it, if you need to.
```

## PICTURES

A "picture", in my noodle, is an image made of pixels. Geralmente, milhões de 'em. Pictures are very goofy things, thanks to the kluge's unbalanced foolbox and the myriad "standard" formats in which pictures can be stored. Fortunately, my creators have wrapped them up for you. Here's the definition:

A picture is a thing [with stuff you don't want to know about].

Here are two sample pictures:

I apologize for the quality of these images. I discovered them in the ancient archives when I was researching the founding of the Osmosian Order.

You can create a picture in a variety of ways. You can load one from a path that contains a BMP, JPG, GIF, or some other standard-format image. You can read a standard-format image into a buffer, and use that buffer as the source for your picture. Ou você pode pegar uma foto na internet com uma URL. You can also create a picture by drawing something and then "extracting" the portion you want. This is the general format:

CREATE a picture FROM something.

Once you have a picture, you can DRAW it. Or apply the standard "Graphic Transformations" to it. Or use it as a model for a real work of art, as we did with the Cal Monet sample program.


## POLYGONS

My creators told me two things about polygons:

Um polígono é uma coisa com alguns vértices. A vertex is a thing with an x coord, a y coord, and a spot at the x.

Polygons and vertices are "things" and therefore, unlike my other graphic objects, have to be created and destroyed. You have to append your vertices to your polygons, too. These are the kind of things you'll say:

CREATE a polygon. CREATE a vertex GIVEN a spot. APPEND a vertex TO a polygon. DESTROY a polygon.

I'll get rid of the vertices for you if you remember to get rid of the polygon.

Once you've got a polygon you can DRAW it. You can also perform all the usual "Graphic Transformations" on it. And if you ask me to SMOOTH it, I will move the vertices around — and add some new ones — to round it up for you. Here's a sample polygon, plain and smoothed:

Sweet! I love drawing sine waves and other trigonometric figures without using any real numbers. I just hope Master Leopold is watching.

## VERTEX

## VERTEX

## VERTEX

## •

## •

## •

## • VERTEX

## AFTER

## SMOOTHING


## POSSESSIVES

```
Possessives are normally used to access fields in records. É bem assim:
```
```
something's field name
```
```
But they can also be used to direct me to a function:
```
```
something's function name
```
And if I can't resolve the possessive in either of those ways, I look for a "deep" field inside any field of the original record that is, itself, a record.

```
But the first thing I do with a possessive is to check for three special names.
The first of these is:
```
```
a pointer's TARGET
```
```
This form is used only with pointers. It says you want to know what the
pointer points to. "A byte pointer", for example, refers to the address of a
byte. "The byte pointer's target" refers to the data in the byte.
```
```
The other special possessives return "meta-data" — data about the data.
One gets you the size, in bytes, and the other gets you the address:
```
```
something's MAGNITUDE
something's WHEREABOUTS
```
```
You will probably not need these very often, and so, to avoid naming
conflicts, my creators gave them clear — but unusual — names.
```
```
Note that the proper possessive of, say, JESUS, is JESUS', not JESUS'S.
```

## PRINTING

```
This is how we save you from the kluge's perplexing printing procedures:
```
```
(1) We always print to the default printer;
(2) We use all of our usual drawing routines.
(3) We make sure text looks the same on the page as on the screen.
```
```
Here is a typical printing routine:
```
"Begin a sheet" sets the current canvas to the printer canvas. "End the sheet" puts it back to the memory canvas. So position any status messages you want to display either before or after these calls.

```
You can "begin a portrait sheet" to be more explicit, and you can "begin a
landscape sheet" to turn it sideways. The various "sheets" are actually boxes,
initialized by the "begin" routine, that you can use to position your stuff.
```
```
And that's all there is to it.
```
```
To print stuff:
Begin printing.
Repetição.
Comece uma folha.
[draw stuff here]
End the sheet.
If [we're not done], repeat.
Termine de imprimir.
```
```
your program
```

## PROCEDURES

A "procedure" is a routine that does something to something for you. Some sample procedure headers from my noodle are:

To convert a number to a string: To center a box in another box (horizontally): To hide the cursor:

The general format is:

TO something:

Procedure headers always start with the word TO, and always end with a colon. The "something" in between follows the usual rules for routine names.

Procedure bodies are made up of statements: conditionals and imperatives, including the built-in imperatives like PRIVATIZE, LOOP, REPEAT, BREAK, and EXIT. You cannot, however, SAY YES or SAY NO in a procedure.

The first sample header above includes a verb, a preposition, and two parameters. The verb is "convert" and the preposition is "to". The parameters are "a number" and "a string".

The second sample's name is similar, but there's a qualifier, "(horizontally)".

The third routine's name is a verb followed by a phrase, "the cursor".

Phrases are typically used to specify one-of-a-kind globals in routine headers, like "draw the bar" in my desktop. Or to refer to a pseudo-variable that is not precisely defined in your code. Like "the cursor" in the example above, or "the last byte" in the "delete the last byte of a string" routine.


## RANDOM NUMBERS

"The lot is cast into the lap, but the disposing thereof is of the Lord." So I guess we'll have to give up on this random number idea and settle for pseudo-random numbers. Which is what I generate.

```
In fact, I generate the very same sequence of "random" numbers every time,
unless you seed my random number generator with a different starting value.
To do so, say this:
```
```
SEED THE RANDOM NUMBER GENERATOR.
```
```
Now nobody knows what you'll get. Except the Lord, of course.
```
```
The most basic of my random number routines is this:
```
```
PICK a number.
```
```
Which returns a number between 0 and 2147483647. But you can also:
```
```
PICK a number BETWEEN a minimum AND a maximum.
PICK a number WITHIN an amount OF another number.
```
```
And you can work with random spots, too:
```
```
PICK a spot ANYWHERE IN a box.
PICK a spot WITHIN a distance OF another spot.
```
```
I'm always collecting routines like these, so you should check the noodle for
a complete list. Just look for "to pick" and you'll probably find most of them.
```
```
And if you're not sure which one to use, flip a coin.
```

## RECORDS

```
A "record" is a collection of closely-related data items of various types
called "fields". Os campos são descritos em sua própria página. But here are some
sample records from my noodle:
```
```
A box has
a left coord, a top coord, a right coord, a bottom coord,
a left-top spot at the left, and a right-bottom spot at the right.
```
```
A roundy box is a box with
a left coord, a top coord, a right coord, a bottom coord,
a left-top spot at the left, a right-bottom spot at the right,
and a radius.
```
```
Um polígono é uma coisa com alguns vértices.
```
The first sample record, "box", has six fields. But the last two are actually "reinterpretations" of the first four. This kind of thing only works, of course, when the physical data structures match. Note that the word "has" is short for "is a record with", which can also be used.

```
The second record, "roundy box", is an extension of box. It has the same
fields as a box, plus a new one called "radius". It is compatible with box, and
I will use all of the routines that work on boxes to manipulate it — unless an
equivalent routine for roundy boxes is available.
```
The third record, "polygon", has nothing in it but a list of vertices. Because polygon is defined as a "thing", I take it to be a dynamic, rather than static, structure. This means you are responsible for allocating and deallocating the memory used by it. See the "Memory Management" topic and the page about "Polygons" for more information.


## RIDERS

```
A "rider" is a record that is used to parse strings. To understand it, you must
be comfortable with "strings" and "substrings". If you're not, look 'em up in
this glossary, and review what we did with them in the Cal Monet.
```
```
This is the definition of "rider" that I carry around in my noodle:
```
```
A rider has
an original substring,
a source substring, and
a token substring.
```
```
When you:
```
```
SLAP a rider ON a string.
```
```
I set the "original" and the "source" to span the entire string. Then I position
the "token" on the source — which leaves it blank but ready to go. When you:
```
```
BUMP a rider.
```
```
I add one to the source's first, and one to the token's last. This shortens
the source while lengthening the token, letting you process the string a byte
at a time. When you want to clear out the old token and start a new one, just:
```
```
POSITION the rider's token ON the rider's source.
```
You can also write up your own routines to MOVE a rider more than one byte at a time, like the ones in my noodle for "spell checking" and "word wrapping", not to mention the ones in my compiler for parsing your source code. Find "to move a rider" in these files, and you'll run into all of them.


## ROUNDY BOXES

A "roundy box" is a box with rounded corners. I use them for the pad on my desktop, my menus, my tabs, and in many other places. Here's the definition:

A roundy box is a box with a left coord, a top coord, a right coord, a bottom coord, a left-top spot at the left, a right-bottom spot at the right, and a radius.

This is a picture of a roundy box, with the parts labeled. Note that I am using the nicknames of the fields here, as you probably will in your programs.

I can make roundy boxes from width and height specifications, from a pair of spots, and from separate coordinates. Até de outra caixa. É bem assim:

MAKE a roundy box this-wide BY that-high WITH a radius. MAKE a roundy box WITH this spot AND that spot AND a radius. MAKE a roundy box WITH a left AND top AND right AND bottom AND radius. MAKE a roundy box FROM a box AND a radius.

I can, of course, DRAW a roundy box. And I've got functions to get a roundy box's WIDTH, HEIGHT, and CENTER, among other things. I can even tell whether or not a certain spot IS IN a roundy box or IS ON the edge of a roundy box. Not to mention all the usual "Graphic Transformations".

## LEFT RIGHT

## TOP

## BOTTOM

## LEFT-TOP

## RIGHT-BOTTOM

## •

## •

## •

## RADIUS


## ROUTINES

A routine is a chunk of code that manipulates one or more variables in some well-defined way. Variables passed to a routine are called "parameters", and may be inputs, outputs, or both. Variables defined within a routine are called "locals", and cannot be seen outside of the routine (unless they're passed as parameters). Variables that are accessible to all routines are called "globals".

```
Each routine has two parts, header and body. The header says what the
routine does, and defines the parameters that it works with. The body is one
or more statements that make the routine actually work. Statements are
either "conditionals" or "imperatives". There are three kinds of routines.
```
```
A "procedure" is a routine that simply does something — long or short, big
or small, easy or hard. Procedure headers always look something like this:
```
```
TO something:
```
```
A "decider" is a routine that says "yes" or "no" about something, usually
after examining the parameters passed to it. Decider headers always say:
```
```
TO DECIDE IF something:
```
```
A "function" is a routine that extracts, calculates, or otherwise derives a
value from a passed parameter. Function headers take this form:
```
```
TO PUT something 'S something INTO a temporary variable:
```
```
Unlike procedures and deciders, functions are not usually called directly.
Instead, the "something's something" is used as if it was a field in a record.
Like a "box's center", which you won't find in the "box" record, because it is
calculated by a function on demand.
```

## SOUNDS

```
You can make noises with your computer like this:
```
```
PLAY a wave file.
PLAY a wave file AND WAIT.
```
```
The "wave file" must be in the ".wav" format. If you play and don't wait, your
program will continue executing while the sound plays. If you do wait, your
program will stop until the sound is done.
```
```
You can also make sounds with these statements:
```
```
BEEP.
CLUCK.
BUZZ.
```
```
The first one makes whatever tasteless sound the user has chosen with the
kluge's control panel. The "cluck" is my standard notification, and is encoded
as a nibble literal in my noodle so the user can't change it. The third sound
does not go through the normal sound apparatus on the computer, and does
not allow the program to continue executing until it is done, making it the
ideal choice for testing. See "Debugging" for more information.
```
You can also make your computer talk, with the kluge's thirty-nine esoteric "speech manager" functions, or these three simple statements:

```
SAY a string.
SAY a string AND WAIT.
WAIT UNTIL SPEAKING IS DONE.
```
```
To silence the talking (but not the other sounds), set "the silent flag".
```

## SPECIAL IMPERATIVES

My three "special imperatives" are probably better thought of as "special purpose imperatives". Um deles pode, por vezes, encontrar-se a utilizar. Esperamos, em última análise, eliminá-la completamente. The other two are for geeks.

An "employ" imperative must be the only statement in a routine. It tells me to use another routine in place of that one. It only works when the parameters of both routines are the same in order and type. You can find examples in my noodle; look for ": employ". You can similarly define alternate wordings by writi multiple headers separated by semi-colons, like this:

TO clear the screen; TO erase the screen; To blank the screen: [code here]

A "push" imperative evaluates an expression and places the result — which must be a one, two, or four-byte value — on the kluge's stack. You probably won't be needing this one. Eu nem sequer o uso. It's left over from the days when my CALL statement (see the "Kluge" topic) was still under development. The general format, nevertheless, is:

PUSH an expression.

An "intel" imperative inserts literal machine code into your executable file. É possível encontrar exemplos complexos em vários lugares do meu mérito. It's a pity the Intel is not a stack machine. The format is trivial:

INTEL nibble literal.

If you're wondering why I don't have a built-in assembler, it's because it's not necessary. There is actually very little machine language in my brain, and as I get faster, more and more of it is replaced with Plain English. Besides, Osmosian Masters like to assemble in their heads. It keeps them young.


## SPOTS

A "spot" is my most basic graphic object. This is not quite the definition in my noodle, but it will do for our purposes:

A spot has an x coord and a y coord.

This is a picture of a spot, with the parts labeled. Note that I am using the nicknames of the fields here, as you probably will in your programs.

Spots are made from an x and a y, or you can get one from someplace else:

MAKE a spot WITH this AND that. PUT the mouse's spot INTO a spot.

You can, of course, DRAW a spot. But don't expect it to be fast enough to be useful. O processamento do kluge é uma das piores características de seu vídeo. And since it has no good features at all, that's not very encouraging.

Spots are used primarily as components of other graphic objects. Like boxes, lines, and polygon vertices. Sometimes they're used as abstract coordinates with no visible representation, like "the mouse's spot" in the example above. See the "Units of Measure" page for a full discussion of coordinates.

I have routines in my noodle that will tell you if a spot IS IN or IS ON any of my other graphic objects, where ON means "on the edge of". The IN deciders are exact, and include the edges. The ON deciders are used by my writer and allow about three pixels of slop so you don't go crazy trying to click on your shapes. You can copy these routines and make ones with no slop if you like.

## X •

## Y


## STRINGS

I store "strings" in two parts: a built-in record with a pair of byte pointers called first and last, and a dynamic array containing the actual bytes, like so:

The numbers in the diagram, in case you haven't guessed, are fictitious addresses. A string is blank if the first is nil (no memory allocated yet), or the last is less than the first (which allows me to pre-allocate memory). Note that even though the data part of a string is dynamically allocated, you never have to "create" or "destroy" strings. I take care of everything so you can:

PUT something INTO a string. APPEND something TO a string. INSERT something INTO a STRING before a byte#. REMOVE THE FIRST BYTE FROM a string. REMOVE THE LAST BYTE FROM a string. FILL a string WITH a byte GIVEN a count. REMOVE LEADING BYTES FROM a string GIVEN a count. REMOVE TRAILING BYTES FROM a string GIVEN a count. REMOVE BYTES FROM a string GIVEN a substring.

You can also UPPERCASE, LOWERCASE, or CAPITALIZE a string. And you can, of course, get a string's LENGTH, in bytes. Not to mention:

GET a width GIVEN a string AND a font.

Furthermore, you can concatenate strings with strings — and other kinds of data — using the infix THEN operator. See the topic on "Expressions" for a description of the clever way my creators implemented this.

## 16 27 H E L L O W O R L D!

```
first last 161718192021222324252627
```

## SUBSTRINGS

A "substring" is a part of a string. Substrings are implemented by a built-in record that looks just like a string — a pair of byte pointers called first and last — which makes them compatible. If, for example, this was a string:

This could be a substring of it (the "WORLD" part):

When you:

SLAP a substring ON a string.

I set the first and the last of the substring to span the entire string. This allows you to work your way through the string forward or backward by adding to the first or subtracting from the last. You can also:

POSITION a substring ON a string.

Which sets up the first, but not the last, of the substring, making it initially blank but ready for manipulation — by adding to the last you can "vacuum" the original string into your substring a byte at a time.

Look for "substring" in my noodle for lots of sample applications.

The primary use of substrings, however, is in "riders", which are discussed in this glossary under the topic of the same name.

## 16 27 H E L L O W O R L D!

```
first last 161718192021222324252627
```
## 22 26

```
first last
```

## TERMS

A "term" is a reference to a piece of data. Terms are used in both expressions and in conditional and imperative statements to indicate what should be operated upon. Terms come in many varieties:

A "literal term" is either a number, ratio, mixed, string, pointer, flag, or nibble literal. See "Literals" for information on how to formulate each of these.

A "local term" is a variable defined within, and usually confined to, a routine. See "Local Variables" for more information.

A "global term" is the name of a global variable. See "Global Variables".

A "signed term" is any term with a plus or minus sign in front of it. A space is required after the sign so I don't mistake it for part of a name.

A "ratio term" is a ratio made from other terms, rather than literal numbers. Spaces are required around the slash, as in "the height / the width".

A "possessive term" is any term followed by a possessive phrase, like "the string's length" or "a polygon's magnitude". See "Possessives" for details.

A "coerced term" is a term whose type you want to forcibly change. I will always treat a pointer, for example, as a pointer — unless you coerce it into something else, like this: "the pointer AS A NUMBER". You will normally not need this feature unless you're a partly-reformed object-head and have defined a lot of things that are extensions of other things.

Now I know this sounds complicated, and it is. But you don't have to think about any of this, just like you don't have to think about nouns and verbs to speak proper English. Type in what you're thinking and let me do the rest.


## O CAMPO DE TEXTO

There is a powerful thing called "text" in my noodle. It is used to implement editable text boxes, large and small. Diálogos, por exemplo. Or text shapes on pages. Meu editor, de fato, é principalmente apenas uma grande caixa de texto. Here is the definition:

A text is a thing with a box, an origin, a pen color, a font, an alignment, some rows, a margin, a scale ratio, a wrap flag, a horizontal scroll flag, a vertical scroll flag, a selection, a modified flag, a last operation, some texts called undos, and some texts called redos.

As you can see, this is no trivial thing. The good news is that my noodle will handle most of the details for you. Normally, you won't do much more than:

CREATE a text. DRAW a text. DESTROY a text.

You should initialize your text's box, pen, font, alignment, margin, and flags after you create it. And you'll have to pass any events related to your text box down to me, of course, so I can take care of all the hard stuff for you. My text event handlers are documented on the following two pages.


## TEXT HANDLERS

I will handle most of your text events for you, if you ask me nicely like this:

HANDLE an event GIVEN a text (backspace key). HANDLE an event GIVEN a text (delete key). HANDLE an event GIVEN a text (down-arrow key). HANDLE an event GIVEN a text (end key). HANDLE an event GIVEN a text (enter key). HANDLE an event GIVEN a text (escape key). HANDLE an event GIVEN a text (home key). HANDLE an event GIVEN a text (left double click). HANDLE an event GIVEN a text (left-arrow key). HANDLE an event GIVEN a text (page-down key). HANDLE an event GIVEN a text (page-up key). HANDLE an event GIVEN a text (printable key). HANDLE an event GIVEN a text (right-arrow key). HANDLE an event GIVEN a text (tab key). HANDLE an event GIVEN a text (up-arrow key).

I know it may seem like a nuisance to dispatch all of these events separately, but that is exactly what makes my text generally useful. Two examples:

If you have a text box with only one line, you will probably want to ignore up and down ARROW keys, while your multi-line text boxes will pass them down to me so I can reposition the caret.

If you're using a text box as a dialog, you will probably cancel the thing when the ESCAPE key is pressed, and execute on the ENTER key. In normal text, you will undoubtedly do something else.

See what I mean? Você está no controle. So you have to issue the orders.


TEXT HANDLERS (continued)

I will also handle a number of other, high-level text operations for you:

HANDLE CUT given a text. HANDLE COPY given a text. HANDLE PASTE given a text.

HANDLE SELECT ALL given a text.

HANDLE FONT HEIGHT given a text and a font height. HANDLE FONT NAME given a text and a font name.

HANDLE PEN given a text and a color.

HANDLE INDENT given a text. HANDLE OUTDENT given a text.

HANDLE UPPERCASE given a text. HANDLE LOWERCASE given a text.

And I can:

HANDLE UNDO given a text. HANDLE REDO given a text.

Whenever you ask. Up to 32 levels deep.

Now to get started with text, I suggest you go play with my "console" a while, then check out the console code in my noodle. After that, you might want to take a look at my editor. But if you really want to see text in action, look in the writer. Finally, spend a few minutes with the dialog stuff in my desktop.


## THINGS

The word "thing" is very special to me. Whenever I see it in a type definition, I create a special dynamic record, and a special kind of chain record, so you can create lists of your things. In the Cal Monet, for example, you said:

Uma obra de arte é uma coisa com uma URL e uma pintura.

But I got very excited and modified and expanded this definition to read:

A work is a pointer to a work record. A work record has a next work, a previous work, a URL, and a painting. Some works are some things with a first work and a last work.

You didn't, of course, know that. But I freely admit it, because it lets you:

APPEND a thing TO some things. APPEND some things TO some other things. INSERT a thing INTO some things AFTER another thing. INSERT a thing INTO some things BEFORE another thing. INSERT some things INTO some other things AFTER a thing. INSERT some things INTO some other things BEFORE a thing. MOVE a thing FROM some things TO some other things. MOVE some things TO some other things. PREPEND a thing TO some things. PREPEND some things TO some other things. REMOVE a thing FROM some things. REVERSE some things.

I also have a function in my noodle that will "put some things' count into a count" for you. All you have to remember is to CREATE and DESTROY each of your things. See "Memory Management" for further information.


## TIMERS

```
A tick is approximately 1 millisecond. "The system's tick count" is the number
of milliseconds since the last restart. Ele embrulha a cada 24,8 dias aproximadamente.
What happens then is unknown, since no kluge has ever stayed up that long.
```
```
Any time you want, you can:
```
```
WAIT FOR some milliseconds.
```
```
I will reduce larger units, such as "1 minute" or "3 seconds", for you.
```
```
I also have a type called "timer" in my noodle that lets you say things like:
```
```
RESET a timer.
RESTART a timer.
START a timer.
STOP a timer.
```
```
I use timers to make sure I can recompile myself in less than three seconds.
Look in the bottom of a "listing" to see them all. You can use them to make
your programs lightning-fast, as well.
```
One-shot timings can be accomplished simply by inserting "start a timer" and "stop the timer" at the appropriate spots in your code.

```
Cumulative timings can be collected by calling "reset" once, then "restart"
and "stop" in pairs throughout your code.
```
```
There is a function in my noodle that will get you "a timer's string" anytime
you need it — even while it is running — and you can also concatenate timers
and strings for display at any time using the infix THEN operator.
```

## TYPES

```
A "type" is a kind or sort of thing — a noun. An "instance" is an actual thing
of a particular type — a proper noun. Globals, locals, and parameters are
concrete instances of abstract types. This is what I understand about types:
```
```
First of all, I have six primitive "built-in types" hard-wired into my brain:
BYTE, WYRD, NUMBER, POINTER, FLAG, and RECORD. See "Built-in Types".
```
```
Next, there are "subset types" that represent some of the instances of some
other type. My noodle, for example, includes many subset types, like these:
```
```
Um número é contador.
Um nome é uma string.
```
```
Thirdly, I know about "unit-of-measure types". These tell me how to convert
one kind of unit into another. Examples from the noodle:
```
```
Um pé tem 12 polegadas.
Uma hora é de 60 minutos.
```
```
I also understand "record" types. See "Records" for details.
```
And let's not forget "pointer types", though you will rarely need to use them directly. I know, for example, that "a byte pointer is a pointer to a byte", and I use byte pointers to manage your strings. See "Strings", "Substrings", "Riders", and "Possessives" for more information.

```
Lastly, I know all about "thing" types. There are many in my noodle, including
console, event, picture, polygon, text, and vertex, all of which are discussed
elsewhere in this glossary. E também pode definir as suas próprias coisas. See
the topic on "Things" here, and try to recall the "works" in the Cal Monet.
```

## UNITS OF MEASURE

In my noodle, the basic unit of measure for graphical objects is the "twip", which is 1/20 of a printer's point, or 1/1440 of an inch. All coordinates are either expressed directly in, or are reduced to, twips. Here's the definition:

Um coord é algumas martelas.

Now, unlike the mathematical model — which considers coordinates to be invisible and dimensionless abstractions — my model knows coordinates as actual spots on a device, such as a screen or a page. Increasing "x" values go across, and increasing "y" values go down, the screen or page. Here, for example, is a box with left-top at 2-1 and bottom-right at 5-3:

Count the dots and note that the width of this box is four, not three, units. E que são três, e não duas, unidades de altura. Measuring this way makes drawing work nicely — another box from 5-1 to 6-3, for instance, will rightly overlap this box along its left edge. You can, however, get the "mathematical" width and height of this box — which are each one unit less, and are useless for drawing — using the X-EXTENT and Y-EXTENT functions.

Other units of measure you will find in my noodle are: milliseconds, seconds, minutes, and hours; inches and feet; kilobytes, megabytes, and gigabytes; and "percent", which I usually convert to a ratio with 100 in the denominator.

## 0 1 2 3 4 5

## 0 1 2 3 4 5 6 7

## · · · · · · · ·

## · · • · · • · ·

## · · · · · · · ·

## · · • · · • · ·

## · · · · · · · ·

## · · · · · · · ·


Index


## INDEX

alt-tab, 5, 21, 23, 56 arithmetic, 11, 57, 59, 74, 85 articles, 11, 20, 80, 85 ascii, 58 at, 75 basic skills, 59 bits, 60 boxes, 61 break, 11, 82, 91 built-in types, 62 byte, 58, 62 call, 82, 86 called, 11, 75, 85 canvas, 24, 25 colors, 28, 63 comments, 18, 19, 56, 64 compatibly, 86 compiler, 4, 9 conditionals, 11, 56, 65, 100 conjunctions, 11, 85 console, 66 contractions, 68, 85 coordinates, 118 cursor, 5, 22, 37, 39, 44, 72, 80, 83 debugging, 67 deciders, 11, 68, 69, 91, 105 definite articles, 11, 80 desktop, 4, 5 directory, 6, 15, 56 document, 6 drawing, 24, 25, 70 dump, 6 editor, 4, 7 ellipse, 71 employ, 82, 107 equal, 11, 85 equations, 12 escape, 6, 7 events, 17, 20, 22, 72, 73 exe, 9, 56 exit, 11, 68, 82, 91 expressions, 11, 57, 59, 74, 85 fields, 75, 98 files, 76, 77 finder, 4, 6

```
finding, 7
flags, 62, 85, 89
flicker, 24
fonts, 78
formulas, 12
functions, 79, 105
globals, 11, 56, 80
God, everywhere
graphics, 81
if, 11, 65, 68
imperatives, 11, 56, 82, 100
indefinite article, 11, 90, 95
infix operators, 11, 57, 59, 74, 85
installation, 4
intel, 82, 107
interface, 5, 14
internet, 40, 45, 84
keyboard, 38-39, 83
keywords, 85
kluge, 4, 16, 82, 86
Kronecker, 12, 97
lines, 87
listings, 88
literals, 11, 89
local variables, 90
loops, 11, 21, 82, 91
magnitude, 98
masking, 92
memory, 26, 27, 93
mouse, 83
names, 11, 94
negative words, 68, 85
nested ifs, 12, 65
nested loops, 12, 91
nibbles, 89, 107
nil, 62, 85, 89
noodle, 4, 9, 10, 56
numbers, 62, 89
objects, 12
parameters, 95
pictures, 96
point, 86
pointers, 62, 82, 89
polygons, 97
possessives, 98
```
```
prepositions, 11, 85
printing, 53, 99
privatize, 49, 82, 95
procedures, 100, 105
projects, 15, 56
punctuation, 11
push, 82, 108
qualifiers, 19
quitting, 23, 27, 73
random numbers, 101
ratios, 57, 89
real numbers, 12
records, 62, 75, 102
reference, 75, 93
refreshing, 24, 25, 70, 72, 83
remarks, 18, 19, 56, 64
repeat, 11, 82, 91
riders, 46, 48, 103
roundy boxes, 104
routines, 11, 56, 100, 105
running, 9, 16, 73
say, 11, 68, 91
screen, 24, 25, 83
shortcuts, 5, 23
sorting, 17
sounds, 106
source code, 56
speech, 106
spots, 87, 108
stopping, 21
strings, 27, 89, 109
substrings, 110
target, 98
terms, 111
text files, 6, 15, 56
text, 36-37, 112-114
things, 41, 115
timers, 116
types, 11, 56, 117
units of measure, 118
verbs, 11, 68, 85
void, 62, 89
whereabouts, 98
writer, 4, 8
wyrd, 62
```