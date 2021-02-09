IMPRIMINDO

A rotina de impress�o precisa ser aprimorada. Eis alguns detalhes da implementa��o:

1. O compilador sempre envia o trabalho de impress�o para a impressora padr�o do sistema;
2. O compilador faz uso das rotinas habituais de desenho.
3. O compilador verifica se o texto que aparece na p�gina de impress�o � igual ao conte�do que est� na tela.

Aqui est� uma rotina t�pica de impress�o:

```
Para imprimir coisas:
Inicie a impress�o.
Percorra.
Inicie uma p�gina.
[desenhe coisas aqui]
Apronte a p�gina.
Se [ faltar alguma coisa], repita.
Termine de imprimir.
```

```
seu programa
```

O comando `Inicie uma p�gina` define o quadro (�rea de desenho) atual como o quadro da impressora. O comando `Apronte a p�gina` coloca o conte�do da p�gina de volta ao quadro da tela virtual. Ent�o posicione quaisquer mensagens de status que voc� desejar exibir antes ou ap�s essas chamadas.

Voc� pode usar o comando `inicie uma p�gina vertical` para ser mais expl�cito, e voc� pode `iniciar uma p�gina horizontal` para trabalhar em modo paisagem. As v�rias `p�ginas` s�o na verdade caixas, inicializadas pela rotina `inicie`, que voc� pode usar para posicionar suas coisas.

Basicamente � s� isso.

