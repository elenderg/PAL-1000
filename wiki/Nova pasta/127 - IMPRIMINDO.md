IMPRIMINDO

A rotina de impressão precisa ser aprimorada. Eis alguns detalhes da implementação:

1. O compilador sempre envia o trabalho de impressão para a impressora padrão do sistema;
2. O compilador faz uso das rotinas habituais de desenho.
3. O compilador verifica se o texto que aparece na página de impressão é igual ao conteúdo que está na tela.

Aqui está uma rotina típica de impressão:

```
Para imprimir coisas:
Inicie a impressão.
Percorra.
Inicie uma página.
[desenhe coisas aqui]
Apronte a página.
Se [ faltar alguma coisa], repita.
Termine de imprimir.
```

```
seu programa
```

O comando `Inicie uma página` define o quadro (área de desenho) atual como o quadro da impressora. O comando `Apronte a página` coloca o conteúdo da página de volta ao quadro da tela virtual. Então posicione quaisquer mensagens de status que você desejar exibir antes ou após essas chamadas.

Você pode usar o comando `inicie uma página vertical` para ser mais explícito, e você pode `iniciar uma página horizontal` para trabalhar em modo paisagem. As várias `páginas` são na verdade caixas, inicializadas pela rotina `inicie`, que você pode usar para posicionar suas coisas.

Basicamente é só isso.

