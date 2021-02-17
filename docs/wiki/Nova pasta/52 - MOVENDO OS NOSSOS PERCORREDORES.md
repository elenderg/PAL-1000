MOVENDO OS NOSSOS PERCORREDORES

Aqui estão as rotinas que precisamos para percorrer as imagens do Google:

```
Para mover um percorredor (usando o Google Imagens):
Limpe o token do percorredor.
Percorra.
Se o token do percorredor estiver em branco, saia.
Se a fonte do piloto percorredor começar com "src=""http://t", pare.
Adicione 1 ao primeiro byte da fonte do percorredor.
Repita.
Adicione o comprimento do "src=""" ao primeiro byte da fonte do percorredor.
Posicione o token do percorredor na fonte do cavaleiro.
Mover o percorredor (usando regras de atributos HTML).
```
```
Para mover um percorredor (usando regras de atributos HTML):
Se a fonte do percorredor estiver em branco, saia.
Se o alvo do primeiro byte da fonte do percorredor for sinal de maior, saia.
Se o alvo do primeiro byte da fonte do percorredor for uma aspa dupla, saia.
Avance o percorredor.
Repita.
```
```
como pintar
```

Caso covê queira ver os dados retornados pelo Google, você pode salvar o conteúdo da fonte do percorredor em um arquivo usando a rotina `gravar um buffer num arquivo` que está presente no arquivo `o cérebro`.

Observe que, uma vez que as subpalavras contêm ponteiros de byte, não os bytes em si, você precisa especificar o alvo do primeiro byte da fonte do percorredor para obter os dados. Eu percebo que isto é um pouco complicado, mas sempre que a gente lida com coisas complicadas, é isso que ocorre.

