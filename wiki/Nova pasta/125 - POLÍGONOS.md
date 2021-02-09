POL�GONOS

Existem duas defini��es importantes sobre pol�gonos no compilador:

`Um pol�gono � uma coisa com alguns v�rtices.`
`Um v�rtice � uma coisa com uma coordenada x, uma coordenada y, e uma localiza��o na coordenada x.`  

Pol�gonos e v�rtices s�o "coisas" e, portanto, ao contr�rio dos outros objetos gr�ficos, eles t�m que ser criados e destru�dos. Voc� tamb�m precisa acrescentar os seus v�rtices aos seus pol�gonos. Exemplos:

`CRIE um pol�gono.`
`CRIE um v�rtice A PARTIR DE uma localiza��o.`
`ACRESCENTE um v�rtice A um pol�gono.`
`DESTRUA um pol�gono.`

Ao usar o comando `DESTRUA um pol�gogo`, o compilador se livra tanto do pol�gono quanto dos v�rtices associados a ele.

Uma vez que voc� criar um pol�gono, voc� poder� DESENH�-lo. Voc� tamb�m pode realizar todas as habituais `Transforma��es Gr�ficas` nele. Voc� tamb�m pode usar o comando `SUAVIZAR`, e o compilador vai tentar arredondar o seu pol�gono, transformando cantos em curvas.  Aqui est� um pol�gono de amostra, com a vers�o normal e a suavizada:

Muito bem! Dessa forma fica f�cil desenhar ondas sinoidais e outras formas geom�tricas sem usar um n�mero real sequer. Eu gostaria que o Leopold estivesse aqui pra ver isso.

```
V�RTICE

V�RTICE

V�RTICE

�

�

 �

�
V�RTICE

DEPOIS

SUAVIZADO
```

