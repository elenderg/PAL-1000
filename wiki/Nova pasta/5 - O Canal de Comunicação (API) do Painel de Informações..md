O Canal de Comunica��o (API) do Painel de Informa��es.

Agora vamos adicionar algum comandos triviais que, mesmo sendo triviais tornar�o simples e f�cil usar o nosso painel de informa��es. Aqui est� a primeira rotina:

```
Para apagar o conte�do do painel de informa��es:
Apague o texto do painel de informa��es.
Mostre tudo.
```
```
como pintar
```

Esta rotina ser� chamada no in�cio de cada `intera��o` para garantir que as informa��es e mensagens de erro sejam limpas antes de se mostrar informa��es novas.

E aqui est� a outra rotina:

```
Para exibir um texto no painel de informa��es:
Coloque o conte�do do texto no texto do painel de informa��es.
Mostre tudo.
```
```
como pintar
```

Essa rotina ser� usada em todo o lugar para informar o usu�rio sobre o que estamos fazendo. Ele permite-nos definir a mensagem de status com uma �nica linha de c�digo.

Se voc� � um programador experiente (e voc� n�o � um pregui�oso), voc� sabe qu�o �teis rotinas triviais como estas podem ser. Ent�o n�o hesite em coloc�-la no c�digo do nosso programa. Se esta � sua primeira vez (ou voc� � um pregui�oso), escute o que estou dizendo.

