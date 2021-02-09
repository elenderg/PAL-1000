POLÍGONOS

Existem duas definições importantes sobre polígonos no compilador:

`Um polígono é uma coisa com alguns vértices.`
`Um vértice é uma coisa com uma coordenada x, uma coordenada y, e uma localização na coordenada x.`  

Polígonos e vértices são "coisas" e, portanto, ao contrário dos outros objetos gráficos, eles têm que ser criados e destruídos. Você também precisa acrescentar os seus vértices aos seus polígonos. Exemplos:

`CRIE um polígono.`
`CRIE um vértice A PARTIR DE uma localização.`
`ACRESCENTE um vértice A um polígono.`
`DESTRUA um polígono.`

Ao usar o comando `DESTRUA um polígogo`, o compilador se livra tanto do polígono quanto dos vértices associados a ele.

Uma vez que você criar um polígono, você poderá DESENHÁ-lo. Você também pode realizar todas as habituais `Transformações Gráficas` nele. Você também pode usar o comando `SUAVIZAR`, e o compilador vai tentar arredondar o seu polígono, transformando cantos em curvas.  Aqui está um polígono de amostra, com a versão normal e a suavizada:

Muito bem! Dessa forma fica fácil desenhar ondas sinoidais e outras formas geométricas sem usar um número real sequer. Eu gostaria que o Leopold estivesse aqui pra ver isso.

```
VÉRTICE

VÉRTICE

VÉRTICE

•

•

 •

•
VÉRTICE

DEPOIS

SUAVIZADO
```

