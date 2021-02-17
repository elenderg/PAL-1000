O CAMPO DE TEXTO

Existe um componente chamado "campo de texto". Ele é utilizado para implementar campos editáveis de texto, sejam eles grandes ou pequenos. Diálogos, por exemplo. Ou formas de texto em páginas. O editor de código, na verdade, é na maior parte apenas uma grande caixa de texto. Eis a definição:

```
Um campo de texto é algo com
uma caixa, uma origem,
uma cor de caneta, uma fonte, um alinhamento,
algumas linhas,
uma margem,
uma proporção de escala,
uma bandeira de embrulho,
uma bandeira de rolagem horizontal,
uma bandeira de rolagem vertical,
uma seleção,
uma bandeira modificada,
uma última operação,
alguns textos chamados desfazimentos, e
alguns textos chamados refazimentos.
```

Como você pode ver, esta não é uma definição trivial. Felizmente o compilador lida com a paior parte dos detalhes ra você. Normalmente, você não fará muito mais do que usar os seguintes comandos:

`CRIE um campo de texto.`
`DESENHE um campo de texto.`
`DESTRUA um campo de texto.`

Você deve inicializar a caixa do campo de texto, a caneta, a fonte, o alinhamento, a margem e as bandeiras depois de criá-lo. E você terá que passar todos os eventos relacionados à sua caixa de texto para o compilador, obviamente, para que ele possa cuidar de todas as coisas difíceis para você. Os manipuladores de eventos do campo de texto estão documentados nas duas páginas a seguir.

