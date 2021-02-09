O CAMPO DE TEXTO

H� uma componente bem �til chamada campo de texto no arquivo `o c�rebro` que torna relativamente f�cil criar campos de texto nos nossos programas. As fun��es `Recortar`, `Copiar`, `Colar`, `Desfazer`, `Refazer`, `Selecionar` e at� mesmo `Verificar Ortografia`, s�o totalmente suportadas. Al�m de tudo, ele � um componente r�pido e eficiente. O `bloco de notas`, por exemplo, � na verdade um super bloco de texto. Voc� pode aprender mais sobre o campo de texto no Gloss�rio que fica no final deste livro.

No entanto, n�o vamos precisar implementar todas essas fun��es no nosso pequeno programa. Algo muito mais simples j� � o suficiente. Aqui est�o as defini��es b�sicas que n�s vamos precisar para o nosso programa. D� uma olhada com calma:

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

Nossa campo de texto � colocada 1/2 polegada acima da parte inferior esquerda da tela. Ele tem 1/4 de polegada de altura e 2 polegadas de largura. Eu n�o acho que precisemos de uma foto aqui.

Observe que, no entanto, que n�s implementamos um cursor de texto bem b�sico, mas eficaz. Quando digitarmos o texto, um underline aparece depois do �ltimo caractere inserido.

