FAZENDO NOSSAS OBRAS DE ARTE FUNCIONAREM

H� duas atualiza��es que temos que colocar no nosso c�digo. A primeira altera��o que precisamos fazer est� na rotina de exibi��o. Felizmente n�o vamos mais precisar alterar ela. O c�digo completo � parecido com este:

```
Para mostrar tudo:
Esconda o cursor do mouse.
Crie o painel de fundo.
Crie o painel de informa��es.
Crie o bot�o de impress�o.
Crie o bot�o de sair.
Crie o campo de texto.
Crie a obra de arte atual.
Atualize a tela.
```
```
como pintar
```

Note que j� que n�s s� atualizamos a tela no final da rotina, os componentes do programa podem ser criados em qualquer ordem. Exceto pelo painel de fundo, � claro.

Uma obra de arte � uma coisa, e as coisas s�o sempre alocadas dinamicamente, ent�o precisamos limp�-las quando terminarmos. Aqui est� a �ltima rotina de finaliza��o:

```
Para finalizar nossas coisas:
Destrua o painel de fundo.
Destrua as obras de arte.
```
```
como pintar
```

