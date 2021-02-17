SOBRE O COMANDO PERCORRA

Se você deu uma olhada no `o cérebro` algumas páginas atrás, deve ter visto que até mesmo a tarefa `Inicialize o programa` requer mais de 100 linhas do código mais feio já visto pelo ser humano. E se você investigar mais aprofundadamente o processamento de eventos definido lá, você descobrirá que as coisas só ficam piores daí pra frente.

Felizmente, foi possível simplificar tudo isso, então nosso manipulador de eventos requer apenas cinco linhas. Aqui está. Pode copiar o código,, mas não execute o programa ainda.

```
Para gerenciar os comandos do usuário:
Remova o evento da fila.
Se o evento não existir, ignore-o.
Gerencie o comando.
Repita.
```
```
Para que se gerencie um evento:
```
```
como pintar
```

Se você é um profissional experiente, você saberá o que quero dizer quando digo que `um evento` na segunda linha define uma nova variável local do tipo `evento`, referenciado nas linhas 03 e 04 como `o evento`. E você vai entender que as mesmas palavras no cabeçalho da outra rotina definem um parâmetro do mesmo tipo (passado por referência) que é conhecido, dentro dessa outra rotina, como `evento`. Você também perceberá, depois que pensar um pouco, que uma das coisas que torna a linguagem sucinta é que não nomeamos variáveis e parâmetros — nos referimos a elas com um artigo e um nome de tipo. Assim como na vida real.

Se você não é um profissional, não se preocupe com isso. Isso significa o que diz.

