O WINDOWS

Se você por acaso precisar utilizar bibliotecas e funções internas do Windows, você pode utilizar comandos semelhantes a este:

```
CHAME "NomeDaDll.dll" "NomeDafunção" COM parâmetro E RETORNE algo.
```
As cláusulas COM e RETORNANDO são opcionais. Você deve diferenciar maiúsculas e minúsculas no nome da função, usando o mesmo nome que o nome da dll do Windows ou da sua pasta. Textos devem ser passadas por endereço e, em muitos casos, devem terminar com o byte NUL. Use "o primeiro byte do texto" para o endereço, e a rotina a seguir para adicionar um byte nulo no final do texto:

```
ADICIONE O BYTE NULO no final de um texto.
```

Em outros casos, o Windows nos fornece não nome de uma função, mas o endereço dela. Você pode chamar essas funções usando uma sintaxe similar:

```
CHAME um endereço COM esse parâmetro E RETORNE algo.
```

Às vezes, o Windows precisa que nós forneçamos o endereço de uma de nossas rotinas para que ele possa interromper nosso previsível fluxo processual em algum
momento. Você pode usar esta sintaxe para obter o endereço de uma rotina:

```
APONTE um ponteiro PARA ROTINA nome de rotina.
```

Mas se você for passar o endereço para o Windows, certifique-se de que o cabeçalho da rotina inclua a palavra-chave COMPATIVELMENTE logo após PARA, assim:

```
PARA COMPATIVELMENTE ...
```
Se você está trabalhando neste nível ridiculamente baixo, você vai querer verificar as seções "Bits", "Imperativos Especiais" e meu o código fonte para mais informações e exemplos.

