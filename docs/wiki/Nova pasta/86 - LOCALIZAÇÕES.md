LOCALIZAÇÕES

Uma "localização" ou "posição" ou ainda "ponto na tela" é um dos objetos gráficos mais básicos do compilador. Esta não é bem a melhor definição pra agora vai servir:

`Uma localização é um registro que tem uma coordenada x e uma coordenada y.`

Esta é uma imagem de uma localização, com as partes acima identificadas. Note que estou usando os apelidos dos campos aqui, como você provavelmente usará em seus programas.

COORDENADA X •

COORDENADA Y •

Localizações são feitas a partir de um x e um y, ou você pode obter uma de outro lugar:

`FAÇA uma localização USANDO isto E aquilo.`
`ARMAZENE a posição do mouse EM uma localização.`  

O compilador consegue DESENHAR uma localização. Mas não espere que seja rápido o suficiente para ser útil. O processamento de vídeo do Windows é uma das suas piores características. E já que ele só oferece recursos ruins, isso não é lá muito encorajador.

Posições são usadas principalmente como componentes de outros objetos gráficos. Como caixas, linhas, vértices e polígonos. Às vezes, elas são usados como coordenadas abstratas sem representação visível, como "a localização do mouse" no exemplo acima. Consulte a página "Unidades de medida" para uma discussão completa sobre coordenadas.

O compilador possui rotinas que podem identificar se uma localização ESTÁ DENTRO ou NA BORDA de qualquer outro objeto gráfico (na borda significa em cima). Quando você vê se algo está DENTRO, isso inclui as bordas. As rotinas que identificam se algo está na borda são usadas pelo caderno e incluem uma margem de erro de 3 pixels para ficar mais fácil de clicar nas formas. Você pode copiar essas rotinas e retirar essas margens de tolerância, se quiser.

