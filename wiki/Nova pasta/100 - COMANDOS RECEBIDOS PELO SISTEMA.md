COMANDOS RECEBIDOS PELO SISTEMA

O Windows insiste que usemos seu modelo complicado e n�o processual juntamente com as suas centenas de mensagens e c�digos absurdos. Felizmente, o compilador inclui defini��es que reduzem essa monstruosidade a apenas dez simples eventos que podem ser tratados de uma forma puramente processual. Eis o c�digo:

```
Um evento � uma coisa com 
uma categoria,
um detector de shift, uma detector de ctrl, uma detector de alt,
uma coordenada,
uma tecla e um byte.
```

`Categoria` nada mais � do que uma das seguintes palavras:

`ATUALIZA��O DE TELA` � Esse tipo de evento informa que � hora de redesenhar a tela. Culpe o Windows por isso.
`MOVIMENTO DE CURSOR` � O cursor se moveu. Esse tipo de evento � muito usado para redimensionar formas e objetos.
`PRESSIONAMENTO DE TECLA` � O usu�rio digitou algo. Acho que nem preciso explicar nada.
`CLIQUE ESQUERDO` (ou apenas `CLIQUE`) � O bot�o esquerdo do mouse acabou de ser presssionado. Muito usado em bot�es e componentes similares.
`CLIQUE DUPLO` � O usu�rio clicou duas vezes. Se voc� usa o Windows ent�o j� sabe que geralmente esse comando � utilizado para abrir ou executar arquivos.
`CLIQUE DIREITO` � O bot�o direito do mouse acabou de ser pressionado. No compilador, esse � o comando que inicia a rolagem da p�gina.
`CLIQUE DIREITO DUPLO` � O usu�rio deve ter clicado por engano. Que tal colocar darmos a ele ovo de p�scoa para celebrar?
`DESATIVA��O` � O usu�rio mudou para outra  janela. O compilador lida com isso internamente.
`ATIVA��O` � O usu�rio retornou para o seu programa. O compilador lida com isso internamente.
`ENCERRAMENTO` � Informa que o programa est� sendo encerrado. Inserido internamente. Voc� n�o deveria ver esse tipo de evento.

Os detectores de `ctrl` e `alt` e `shift` indicam o estado das teclas correspondentes no momento do evento (o detector � acionado se a tecla for pressionada).

A `coordenada` � a posi��o do mouse no momento do evento.

A `tecla` e seu `byte` ASCII equivalente (se houver) aplicam-se apenas � Teclas Pressionadas.

