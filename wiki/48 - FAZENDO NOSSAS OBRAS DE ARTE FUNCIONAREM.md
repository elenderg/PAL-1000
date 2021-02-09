﻿FAZENDO NOSSAS OBRAS DE ARTE FUNCIONAREM

Há duas atualizações que temos que colocar no nosso código. A primeira alteração que precisamos fazer está na rotina de exibição. Felizmente não vamos mais precisar alterar ela. O código completo é parecido com este:

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

Note que já que nós só atualizamos a tela no final da rotina, os componentes do programa podem ser criados em qualquer ordem. Exceto pelo painel de fundo, é claro.

Uma obra de arte é uma coisa, e as coisas são sempre alocadas dinamicamente, então precisamos limpá-las quando terminarmos. Aqui está a última rotina de finalização:

```
Para finalizar nossas coisas:
Destrua o painel de fundo.
Destrua as obras de arte.
```
```
como pintar
```

