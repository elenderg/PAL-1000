O EVENTO DE ATUALIZA��O

A segunda dificuldade relacionada � tela que temos que enfrentar � que o Windows tenta ser um sistema multi-tarefas, mas na pr�tica n�o funciona muito bem. J� n�o basta ter que compartilhar recursos como espa�o em disco e Mem�ria RAM com os outros programas. Nunca se sabe quanto tempo teremos que esperar at� que o Windows termine uma tarefa e retorne a executar as nossas. Na pr�tica, o Windows acaba por interromper constantemente a execu��o do programa.

As coisas pioram caso voc� troque de janela. Sabe porque fica pior? Porque o Windows, que que de alguma forma consegue restaurar toda a mem�ria, registos e flags para o estado exato em que estavam no momento em que foram interrompidos � por algum motivo n�o lembra de como era a interface do programa! Sabe o que o Windows faz pra tentar consertar isso? Ele envia para o programa um comando `atualizar tela` e espera que nosso programa fa�a todo o trabalho.

Bem, no fim das contas, esse comando acaba por ser chato, mas n�o � t�o dif�cil assim de gerenciar. Fazer o qu�, assim � a vida. Veja como lidamos com isso:

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

A raz�o pela qual criamos duas tarefas separados, uma para `atualizar a tela` e outra para `mostrar tudo` ser� explicada em breve. A tarefa de `criar o painel do fundo` ser� abordada nas pr�ximas p�ginas.

