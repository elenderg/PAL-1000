TRABALHANDO COM OBRAS DE ARTE

Precisamos de uma rotina para pintar nossas obras de arte, � claro, mas (como qualquer artista) n�s somente queremos exibir nossas obras que j� estiverem prontas. O que significa que tamb�m precisamos de uma decissor para dizer qual � qual. Eis o c�digo:

```
Para exibir uma obra de arte:
Se a obra de arte for inexistente, saia.
Se a obra de arte n�o estiver pronta, saia.
Crie a obra de arte.
```
```
Para decidir se a obra est� terminada:
Se a obra de arte n�o existir, diga sim.
Se a obra de arte existir, diga sim.
[Caso contr�rio] diga n�o.
```
```
como pintar
```

A primeira rotina verifica se a obra de arte est� pronta para ser pintada, e se estiver, ela pinta a obra de arte. N�s ainda n�o criamos uma rotina chamada `crie uma pintura`, e advinha s�, n�s tamb�m n�o vamos criar uma. Mas j� que dissemos que uma pintura � uma figura, n�s podemos simplesmente usar a rotina padr�o `criar uma imagem` que est� presente no arquivo `o c�rebro` para fazer esse trabalho.

Se voc� � um nerd, voc� vai reconhecer isso como uma "redu��o autom�tica de tipo" e vai me perguntar como que o compilador faz isso com tanta efici�ncia e eleg�ncia. Se voc� n�o � um nerd, voc� provavelmente vai pensar: "T�, mas e da�?" e depois se perguntar por que as outras linguagens de programa��o n�o tem essa capacidade.

A segunda rotina � apenas um decisor comum. Note, no entanto, que ela considera uma obra de arte inexistente como se ela j� estivesse finalizada. At� porque, se n�o houver trabalho pra fazer, isso significa que o trabalho acabou, certo?

