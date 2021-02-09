FONTES

No Windows, uma fonte � definida com quatorze par�metros distintos. Complicado demais.
O compilador usa uma defini��o bem mais simplicada:

```
Uma fonte tem um nome e uma altura.
```
O nome da fonte � o nome real armazenado em um arquivo de fonte. Ele pode ou n�o ser o mesmo que o nome do arquivo. Voc� provavelmente est� familiarizado com nomes de fonte
como `Arial`, `Times New Roman` e `Courier New`.

A altura da fonte pode ser especificada em qualquer unidade de medida conveniente. O caderno utiliza valores como 1/4 de polegada para poder se harmonizar com a fun��o de alinhamento `yank`.

A fonte padr�o" do compilador � chamada de Osmosian como homenagem aos criadores do projeto. O c�digo hexadecimal da fonte est� presente no noodle. O CAL "instala" a fonte na inicializa��o e deleta no encerramento. Ela mede 1/4 de polegada. Voc� est� vendo uma amostra neste momento.

Para configurar uma fonte, basta utilizar o comando:

```
COLOQUE um nome E uma altura EM uma fonte.
```
Ent�o, quando voc� estiver exibindo os itens na dela, informe que quer usar sua fonte:

```
Escreva "Ol�, mundo!" no centro da caixa de sele��o usando a fonte.
```

Se as suas fontes apareceram diferente do esperado, voc� provavelmente errou o nome da fonte.
Lembre-se, um nome de fonte n�o � necessariamente o nome do arquivo na pasta "fonte" do Windows. Em vez disso, voc� deve usar o *nome do typeface* exibido na caixa de visualiza��o que aparece quando voc� clica duas vezes em um desses arquivos de fontes.

