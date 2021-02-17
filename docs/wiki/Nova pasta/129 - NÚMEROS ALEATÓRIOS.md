N�MEROS ALEAT�RIOS

*"Para fazer um sorteio s�o lan�ados os dados, mas quem determina o reultado � o Senhor." [Prov�rbios 16:33](https://www.bibliaonline.com.br/acf/pv/16/33)* Ent�o, eu acho que teremos que desistir dessa ideia de n�meros aleat�rios e nos contentar com n�meros pseudo-aleat�rios. Que � o que esse consegue gerar (n�o s� esse, mas a maioria dos compiladores).

Na verdade, o compilador gera a mesma sequ�ncia de n�meros "aleat�rios" toda vez, a n�o ser que voc� <a href="https://pt. wikipedia. org/wiki/Semente_aleat%C3%B3ria">semeie</a> o gerador de n�meros aleat�rios com um valor inicial diferente (esse comportamento tamb�m se repete em outros compiladores).
Enfim, para semear o gerador de n�meros aleat�rios, use o comando:

```
SEMEIE O GERADOR DE N�MERO ALEAT�RIOS.
```

Mas n�o pense que voc� vai sempre ter certeza do resultado. Ningu�m sabe. Exceto o Senhor, � claro.

A rotina de n�meros aleat�rios mais b�sica � esta:

```
ESCOLHA um n�mero.
```

O que retorna um n�mero entre `0` e `2147483647`. Voc� tamb�m pode fazer assim:

```
ESCOLHA um n�mero ENTRE o n�mero m�nimo E o n�mero m�ximo.
ESCOLHA um n�mero ENTRE uma quantidade DE outro n�mero.
(Por exemplo: Escolha um n�mero entre 6 de 60).
```

Voc� tamb�m pode usar a aleatoriedade ao escolher posi��es na tela:

```
ESCOLHA um lugar em QUALQUER LUGAR dentro de uma caixa.
ESCOLHA uma localiza��o NO RAIO DE uma dist�ncia DE outra localiza��o.
```

Rotinas como essa est�o sempre sendo adicionadas e aperfei�oadas ent�o � sempre bom dar uma olhada no c�digo fonte do compilador. Basta procurar por "escolha" e voc� provavelmente encontrar� a maioria deles.

E se voc� n�o tiver certeza qual usar, tente o cara ou coroa.

