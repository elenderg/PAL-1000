SOBRE O COMANDO PERCORRA

Se voc� deu uma olhada no `o c�rebro` algumas p�ginas atr�s, deve ter visto que at� mesmo a tarefa `Inicialize o programa` requer mais de 100 linhas do c�digo mais feio j� visto pelo ser humano. E se voc� investigar mais aprofundadamente o processamento de eventos definido l�, voc� descobrir� que as coisas s� ficam piores da� pra frente.

Felizmente, foi poss�vel simplificar tudo isso, ent�o nosso manipulador de eventos requer apenas cinco linhas. Aqui est�. Pode copiar o c�digo,, mas n�o execute o programa ainda.

```
Para gerenciar os comandos do usu�rio:
Remova o evento da fila.
Se o evento n�o existir, ignore-o.
Gerencie o comando.
Repita.
```
```
Para que se gerencie um evento:
```
```
como pintar
```

Se voc� � um profissional experiente, voc� saber� o que quero dizer quando digo que `um evento` na segunda linha define uma nova vari�vel local do tipo `evento`, referenciado nas linhas 03 e 04 como `o evento`. E voc� vai entender que as mesmas palavras no cabe�alho da outra rotina definem um par�metro do mesmo tipo (passado por refer�ncia) que � conhecido, dentro dessa outra rotina, como `evento`. Voc� tamb�m perceber�, depois que pensar um pouco, que uma das coisas que torna a linguagem sucinta � que n�o nomeamos vari�veis e par�metros � nos referimos a elas com um artigo e um nome de tipo. Assim como na vida real.

Se voc� n�o � um profissional, n�o se preocupe com isso. Isso significa o que diz.

