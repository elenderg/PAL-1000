VAZAMENTOS DE MEMÓRIA

O painel de fundo, como dissemos, é uma imagem. Imagens necessitam de memória para serem armazenadas. A quantidade necessária depende, evidentemente, do tamanho da imagem. Como nem sempre sabemos com antecedência quão grande ou pequena pode ser uma imagem, a memória para imagens é alocada, dinamicamente, no tempo de execução. Esta espaço ocupado de memória terá de ser desocupado mais tarde quando não for mais necessário.

Por convenção, utilizaremos as palavras chave `criar` e `destruir` sempre que efetuarmos alocação e desalocação de espaços de tamanho variável na memória. É de sua responsabilidade destruir tudo o que você criar antes de abdicar do controle em seu programa. Se você não fizer isso, você causará um "vazamento de memória" e pedaços de memória irão vazar de dentro do seu computador e cair nos seus sapatos.

Você será capaz de ver isso por si mesmo depois de criarmos nosso painel de fundo. Comente a linha que a destrói o painel, e quando você sair do programa usando CTRL-Q, uma caixa de mensagem assustadora aparecerá com as más notícias.

Se você já programou antes, provavelmente vai querer saber que...

(1) As strings são dinamicamente alocadas e podem ter qualquer comprimento — mas a memória é gerenciada inteiramente (e muito eficientemente) por mim, assim elas parecem estáticas para você. Em outras palavras, não se preocupe com elas. Apenas aproveite.

(2) Quando você destrói uma coisa, tudo que está ligado a essa coisa é destruído juntamente com ela. Isso libera você do tedioso fardo de escrever detalhadas destruições rotinas para cada tipo de coisa que você cria.

(3) Qualquer coisa mais do que isso cai na categoria "coleta de lixo" e, como cada programador maníaco sabe, a coleta de lixo é para garis.

Se você nunca programou, certifique-se de limpar o que você mesmo sujou.

