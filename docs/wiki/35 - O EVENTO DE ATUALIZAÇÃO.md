O EVENTO DE ATUALIZAÇÃO

A segunda dificuldade relacionada à tela que temos que enfrentar é que o Windows tenta ser um sistema multi-tarefas, mas na prática não funciona muito bem. Já não basta ter que compartilhar recursos como espaço em disco e Memória RAM com os outros programas. Nunca se sabe quanto tempo teremos que esperar até que o Windows termine uma tarefa e retorne a executar as nossas. Na prática, o Windows acaba por interromper constantemente a execução do programa.

As coisas pioram caso você troque de janela. Sabe porque fica pior? Porque o Windows, que que de alguma forma consegue restaurar toda a memória, registos e flags para o estado exato em que estavam no momento em que foram interrompidos — por algum motivo não lembra de como era a interface do programa! Sabe o que o Windows faz pra tentar consertar isso? Ele envia para o programa um comando `atualizar tela` e espera que nosso programa faça todo o trabalho.

Bem, no fim das contas, esse comando acaba por ser chato, mas não é tão difícil assim de gerenciar. Fazer o quê, assim é a vida. Veja como lidamos com isso:

```
Para gerenciar o comando (atualizar):
Mostre tudo.
```
```
Para mostrar tudo:
Crie o painel de fundo.
Atualize a tela.
```
```
como pintar
```

A razão pela qual criamos duas tarefas separados, uma para `atualizar a tela` e outra para `mostrar tudo` será explicada em breve. A tarefa de `criar o painel do fundo` será abordada nas próximas páginas.

