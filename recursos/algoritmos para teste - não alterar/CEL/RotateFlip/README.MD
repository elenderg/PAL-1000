# Utilização da Enumeração RotateFlipType na função GdipImageRotateFlip 

Este README descreve um algoritmo que demonstra o resultado da transformação das diferentes opções presentes na enumeração RotateFlipType, 
utilizada na função GdipImageRotateFlip da biblioteca gdiplus.dll. 
Este README é destinado a desenvolvedores que desejam entender e aplicar transformações de rotação e reflexão em imagens utilizando o gdiplus.dll.

## Descrição
A biblioteca gdiplus.dll é uma biblioteca gráfica da Microsoft que oferece funcionalidades para trabalhar com imagens e gráficos. 
Uma das operações comuns em manipulação de imagens é a rotação e reflexão,
e a enumeração RotateFlipType oferece uma variedade de opções para aplicar essas transformações.

O algoritmo demonstrado aqui permite aos desenvolvedores compreender como usar as diferentes opções da enumeração RotateFlipType para realizar operações de rotação e reflexão em uma imagem.

## Opções da Enumeração RotateFlipType
A enumeração RotateFlipType oferece várias opções de transformação, como
rotação em 90 graus, 
reflexão horizontal, 
reflexão vertical 
e combinações dessas operações. 
Consulte a documentação da gdiplus.dll para obter a lista completa de opções disponíveis.

A sintaxe de chamada é esta  
_Processe "gdiplus.dll" "GdipImageRotateFlip" com_ 
  _o gpBitmap desta imagem_ e 
  _o valor da enumeração._ \ número que vai de 0 a 7

<p>
<img src="https://github.com/elenderg/Portugues-Puro/blob/77ec44b2bc042a1e2e7044b74689d0837c62b653/recursos/algoritmos%20para%20teste%20-%20n%C3%A3o%20alterar/CEL/RotateFlip/Rotate90-Rotate270.png" alt="Rotate90-Rotate270" > </p><p>
<img src="https://github.com/elenderg/Portugues-Puro/blob/77ec44b2bc042a1e2e7044b74689d0837c62b653/recursos/algoritmos%20para%20teste%20-%20n%C3%A3o%20alterar/CEL/RotateFlip/RotateNone-Rotate180.png" alt="RotateNone-Rotate180" >
 </p>


