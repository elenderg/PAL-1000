COMANDOS RECEBIDOS PELO SISTEMA

O Windows insiste que usemos seu modelo complicado e não processual juntamente com as suas centenas de mensagens e códigos absurdos. Felizmente, o compilador inclui definições que reduzem essa monstruosidade a apenas dez simples eventos que podem ser tratados de uma forma puramente processual. Eis o código:

```
Um evento é uma coisa com 
uma categoria,
um detector de shift, uma detector de ctrl, uma detector de alt,
uma coordenada,
uma tecla e um byte.
```

`Categoria` nada mais é do que uma das seguintes palavras:

`ATUALIZAÇÃO DE TELA` — Esse tipo de evento informa que é hora de redesenhar a tela. Culpe o Windows por isso.
`MOVIMENTO DE CURSOR` — O cursor se moveu. Esse tipo de evento é muito usado para redimensionar formas e objetos.
`PRESSIONAMENTO DE TECLA` — O usuário digitou algo. Acho que nem preciso explicar nada.
`CLIQUE ESQUERDO` (ou apenas `CLIQUE`) — O botão esquerdo do mouse acabou de ser presssionado. Muito usado em botões e componentes similares.
`CLIQUE DUPLO` — O usuário clicou duas vezes. Se você usa o Windows então já sabe que geralmente esse comando é utilizado para abrir ou executar arquivos.
`CLIQUE DIREITO` — O botão direito do mouse acabou de ser pressionado. No compilador, esse é o comando que inicia a rolagem da página.
`CLIQUE DIREITO DUPLO` — O usuário deve ter clicado por engano. Que tal colocar darmos a ele ovo de páscoa para celebrar?
`DESATIVAÇÃO` — O usuário mudou para outra  janela. O compilador lida com isso internamente.
`ATIVAÇÃO` — O usuário retornou para o seu programa. O compilador lida com isso internamente.
`ENCERRAMENTO` — Informa que o programa está sendo encerrado. Inserido internamente. Você não deveria ver esse tipo de evento.

Os detectores de `ctrl` e `alt` e `shift` indicam o estado das teclas correspondentes no momento do evento (o detector é acionado se a tecla for pressionada).

A `coordenada` é a posição do mouse no momento do evento.

A `tecla` e seu `byte` ASCII equivalente (se houver) aplicam-se apenas à Teclas Pressionadas.

