﻿FONTES

No Windows, uma fonte é definida com quatorze parâmetros distintos. Complicado demais.
O compilador usa uma definição bem mais simplicada:

```
Uma fonte tem um nome e uma altura.
```
O nome da fonte é o nome real armazenado em um arquivo de fonte. Ele pode ou não ser o mesmo que o nome do arquivo. Você provavelmente está familiarizado com nomes de fonte
como `Arial`, `Times New Roman` e `Courier New`.

A altura da fonte pode ser especificada em qualquer unidade de medida conveniente. O caderno utiliza valores como 1/4 de polegada para poder se harmonizar com a função de alinhamento `yank`.

A fonte padrão" do compilador é chamada de Osmosian como homenagem aos criadores do projeto. O código hexadecimal da fonte está presente no noodle. O CAL "instala" a fonte na inicialização e deleta no encerramento. Ela mede 1/4 de polegada. Você está vendo uma amostra neste momento.

Para configurar uma fonte, basta utilizar o comando:

```
COLOQUE um nome E uma altura EM uma fonte.
```
Então, quando você estiver exibindo os itens na dela, informe que quer usar sua fonte:

```
Escreva "Olá, mundo!" no centro da caixa de seleção usando a fonte.
```

Se as suas fontes apareceram diferente do esperado, você provavelmente errou o nome da fonte.
Lembre-se, um nome de fonte não é necessariamente o nome do arquivo na pasta "fonte" do Windows. Em vez disso, você deve usar o *nome do typeface* exibido na caixa de visualização que aparece quando você clica duas vezes em um desses arquivos de fontes.

