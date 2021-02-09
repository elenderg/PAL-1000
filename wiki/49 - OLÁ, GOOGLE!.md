﻿OLÁ, GOOGLE!

Agora vamos começar a trabalhar na tecla <kbd>Enter</kbd>. Eis o código:

```
Para gerrenciarmos um comando (tecla Enter):
Se a o texto do campo de texto estiver em branco, alerte o usuário; prossiga.
Mostre o termo "Trabalhando..." no painel de informações.
Coloque "http://images.google.com/images?q=" em uma URL.
Converta o texto do campo de texto em um texto de pesquisa.
Coloque o texto de pesquisa no fim da URL.
Leia a URL em um buffer.
Se o erro de entrada/saída não estiver em branco, mostre o erro no painel de informações; saia.
Crie as obras de arte usando o buffer.
Se as obras estiverem vazias, mostre "Hã?" no painel de informações, saia.
Vá para a primeira obra de arte.
```
```
como pintar
```

Se o campo de texto estiver em branco, não há nada a fazer; nós usaremos o som para alertar o usuário e sairemos.

Caso contrário, nós vamos escrever uma mensagem no painel de informações (caso o Google esteja ocupado e não responda imediatamente). Em seguida, formulamos uma solicitação usando um texto literal e uma versão do texto que seja compatível com o formato HTML, lendo a resposta em um buffer (que é apenas um nome chique para uma sequência de caracteres).

Se algo deu errado, relatamos o erro. Se a página chegar intacta, tentamos gerar nossas obras de arte em andamento a partir dos dados no buffer. Se as obras estiverem em branco quando terminarmos, isso significa que o Google não entendeu nossa consulta — neste caso, dizemos "Hã?" e saímos. Caso contrário, mostramos ao usuário a primeira obra de arte da lista.

