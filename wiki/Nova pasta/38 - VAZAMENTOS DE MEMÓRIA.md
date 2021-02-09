VAZAMENTOS DE MEM�RIA

O painel de fundo, como dissemos, � uma imagem. Imagens necessitam de mem�ria para serem armazenadas. A quantidade necess�ria depende, evidentemente, do tamanho da imagem. Como nem sempre sabemos com anteced�ncia qu�o grande ou pequena pode ser uma imagem, a mem�ria para imagens � alocada, dinamicamente, no tempo de execu��o. Esta espa�o ocupado de mem�ria ter� de ser desocupado mais tarde quando n�o for mais necess�rio.

Por conven��o, utilizaremos as palavras chave `criar` e `destruir` sempre que efetuarmos aloca��o e desaloca��o de espa�os de tamanho vari�vel na mem�ria. � de sua responsabilidade destruir tudo o que voc� criar antes de abdicar do controle em seu programa. Se voc� n�o fizer isso, voc� causar� um "vazamento de mem�ria" e peda�os de mem�ria ir�o vazar de dentro do seu computador e cair nos seus sapatos.

Voc� ser� capaz de ver isso por si mesmo depois de criarmos nosso painel de fundo. Comente a linha que a destr�i o painel, e quando voc� sair do programa usando CTRL-Q, uma caixa de mensagem assustadora aparecer� com as m�s not�cias.

Se voc� j� programou antes, provavelmente vai querer saber que...

(1) As strings s�o dinamicamente alocadas e podem ter qualquer comprimento � mas a mem�ria � gerenciada inteiramente (e muito eficientemente) por mim, assim elas parecem est�ticas para voc�. Em outras palavras, n�o se preocupe com elas. Apenas aproveite.

(2) Quando voc� destr�i uma coisa, tudo que est� ligado a essa coisa � destru�do juntamente com ela. Isso libera voc� do tedioso fardo de escrever detalhadas destrui��es rotinas para cada tipo de coisa que voc� cria.

(3) Qualquer coisa mais do que isso cai na categoria "coleta de lixo" e, como cada programador man�aco sabe, a coleta de lixo � para garis.

Se voc� nunca programou, certifique-se de limpar o que voc� mesmo sujou.

