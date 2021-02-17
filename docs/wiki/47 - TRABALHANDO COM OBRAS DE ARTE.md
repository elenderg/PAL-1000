﻿TRABALHANDO COM OBRAS DE ARTE

Precisamos de uma rotina para pintar nossas obras de arte, é claro, mas (como qualquer artista) nós somente queremos exibir nossas obras que já estiverem prontas. O que significa que também precisamos de uma decissor para dizer qual é qual. Eis o código:

```
Para exibir uma obra de arte:
Se a obra de arte for inexistente, saia.
Se a obra de arte não estiver pronta, saia.
Crie a obra de arte.
```
```
Para decidir se a obra está terminada:
Se a obra de arte não existir, diga sim.
Se a obra de arte existir, diga sim.
[Caso contrário] diga não.
```
```
como pintar
```

A primeira rotina verifica se a obra de arte está pronta para ser pintada, e se estiver, ela pinta a obra de arte. Nós ainda não criamos uma rotina chamada `crie uma pintura`, e advinha só, nós também não vamos criar uma. Mas já que dissemos que uma pintura é uma figura, nós podemos simplesmente usar a rotina padrão `criar uma imagem` que está presente no arquivo `o cérebro` para fazer esse trabalho.

Se você é um nerd, você vai reconhecer isso como uma "redução automática de tipo" e vai me perguntar como que o compilador faz isso com tanta eficiência e elegância. Se você não é um nerd, você provavelmente vai pensar: "Tá, mas e daí?" e depois se perguntar por que as outras linguagens de programação não tem essa capacidade.

A segunda rotina é apenas um decisor comum. Note, no entanto, que ela considera uma obra de arte inexistente como se ela já estivesse finalizada. Até porque, se não houver trabalho pra fazer, isso significa que o trabalho acabou, certo?

