O CAMPO DE TEXTO

Há uma componente bem útil chamada campo de texto no arquivo `o cérebro` que torna relativamente fácil criar campos de texto nos nossos programas. As funções `Recortar`, `Copiar`, `Colar`, `Desfazer`, `Refazer`, `Selecionar` e até mesmo `Verificar Ortografia`, são totalmente suportadas. Além de tudo, ele é um componente rápido e eficiente. O `bloco de notas`, por exemplo, é na verdade um super bloco de texto. Você pode aprender mais sobre o campo de texto no Glossário que fica no final deste livro.

No entanto, não vamos precisar implementar todas essas funções no nosso pequeno programa. Algo muito mais simples já é o suficiente. Aqui estão as definições básicas que nós vamos precisar para o nosso programa. Dê uma olhada com calma:

```
como pintar
```
```
O campo de texto tem uma caixa e um texto.
```
```
Para inicializar o campo de texto:
Coloque o valor da coordenada esquerda da tela no valor da coordenada esquerda do campo de texto.
Adicione 1/2 polegada ao valor da coordenada esquerda do campo de texto.
Coloque o valor da coordenada esquerda do campo de texto no valor da coordenada direita do campo de texto.
Adicione 2 polegadas ao valor da coordenada direita do campo de texto.
Coloque o valor da coordenada inferior da tela no valor da coordenada superior do campo de texto.
Subtraia 3/4 de polegada do valor da coordenada superior do campo de texto.
Coloque o valor da coordenada inferior da tela no valor da coordenada inferior do campo de texto.
Subtraia 1/2 polegada do valor da coordenada inferior do campo de texto.
```
```
Para exibir o texto:
Coloque texto do campo de texto em um texto.
Adicione "_" ao final do texto.
Coloque o texto na caixa do campo de texto.
```

Nossa campo de texto é colocada 1/2 polegada acima da parte inferior esquerda da tela. Ele tem 1/4 de polegada de altura e 2 polegadas de largura. Eu não acho que precisemos de uma foto aqui.

Observe que, no entanto, que nós implementamos um cursor de texto bem básico, mas eficaz. Quando digitarmos o texto, um underline aparece depois do último caractere inserido.

