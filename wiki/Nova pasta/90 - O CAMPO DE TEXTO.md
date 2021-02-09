O CAMPO DE TEXTO

Existe um componente chamado "campo de texto". Ele � utilizado para implementar campos edit�veis de texto, sejam eles grandes ou pequenos. Di�logos, por exemplo. Ou formas de texto em p�ginas. O editor de c�digo, na verdade, � na maior parte apenas uma grande caixa de texto. Eis a defini��o:

```
Um campo de texto � algo com
uma caixa, uma origem,
uma cor de caneta, uma fonte, um alinhamento,
algumas linhas,
uma margem,
uma propor��o de escala,
uma bandeira de embrulho,
uma bandeira de rolagem horizontal,
uma bandeira de rolagem vertical,
uma sele��o,
uma bandeira modificada,
uma �ltima opera��o,
alguns textos chamados desfazimentos, e
alguns textos chamados refazimentos.
```

Como voc� pode ver, esta n�o � uma defini��o trivial. Felizmente o compilador lida com a paior parte dos detalhes ra voc�. Normalmente, voc� n�o far� muito mais do que usar os seguintes comandos:

`CRIE um campo de texto.`
`DESENHE um campo de texto.`
`DESTRUA um campo de texto.`

Voc� deve inicializar a caixa do campo de texto, a caneta, a fonte, o alinhamento, a margem e as bandeiras depois de cri�-lo. E voc� ter� que passar todos os eventos relacionados � sua caixa de texto para o compilador, obviamente, para que ele possa cuidar de todas as coisas dif�ceis para voc�. Os manipuladores de eventos do campo de texto est�o documentados nas duas p�ginas a seguir.

