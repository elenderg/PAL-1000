# Português Puro

[![Crowdin](https://badges.crowdin.net/portugues-puro/localized.svg)](https://crowdin.com/project/portugues-puro)

<p>
<img src="docs/Imagens-Para-o-Readme/tela.png" alt="Tela do Programa" width="856" height="481">
 </p>
 

Este Projeto é baseado na [Plain English Programming Language](http://osmosianplainenglishprogramming.blog/).

Os arquivos originais do projeto podem ser obtidos [aqui](http://www.osmosian.com/cal-4700.zip) e na pasta [cal-4700](https://github.com/elenderg/Portugues-Puro/tree/main/recursos/CAL-4700).

A documentação da linguagem (em inglês) está disponível [aqui](https://github.com/elenderg/Portugues-Puro/tree/main/recursos/CAL-4700/documentation).

*A documentação da linguagem do projeto está em desenvolvimento.*


# Estrutura dos Arquivos

O Ambiente de Desenvolvimento Integrado é composto de basicamente 6 arquivos:

  1. **O compilador**, que contém o código fonte do compilador da linguagem;
  2. **O cérebro**, conjunto de bibliotecas que contém as definições necessárias para o funcionamento do compilador e dos demais módulos;
  3. **O ambiente de trabalho**, que contém o código fonte da interface gráfica do ambiente de desenvolvimento. A interface segue um viés minimalista. Os módulos a seguir funcionam de forma integrada com o ambiente de trabalho.
  4. **O editor de código,** contém as rotinas referentes à edição/ manipulação das linhas de texto e realce de sintaxe
  5. **O explorador de arquivos**, contém as rotinas para navegação no sistema de arquivos. Conta com um *[hex dumper](https://pt.wikipedia.org/wiki/Hex_dump)*.
  6. **O editor de documentos**, (contém funções para o editor [WYSIWYG](https://pt.wikipedia.org/wiki/WYSIWYG) da plataforma)


## Funcionamento

A interface do Ambiente Integrado de Desenvolvimento (ADI) usa uma abordagem disruptiva. 

Existem 26 botões de menu, correspondendo aos caracteres de A a Z,  
<img src="docs/Imagens-Para-o-Readme/menus.png" Alt="Menu do programa">

- além do botão **＊** que é utilizado para abrir a paleta de cores. 
 <img src="docs/Imagens-Para-o-Readme/✷.png" Alt="Paleta de cores">


Boa parte dos sub-menus possui uma tecla de atalho que pode ser acessada com _Ctrl_ ou _Alt_.

Ao lado dos botões existe uma barra que exibe informações diversas, dependendo do contexto, por exemplo: 

 - linha e coluna
 <img src="docs/Imagens-Para-o-Readme/linhacoluna.png">
 - texto copiado
 <img src="docs/Imagens-Para-o-Readme/copiado.png">
 - texto colado
 <img src="docs/Imagens-Para-o-Readme/colado.png">
 - quantidade de linhas selecionadas
 <img src="docs/Imagens-Para-o-Readme/quantidadedelinhasselecionadas.png">

O programa ainda não possui barras de rolagem nem botões de Maximizar, Minimizar ou Fechar. 

(Para sair do Programa, pressione <kbd>Alt+F</kbd>.

Para Fechar um arquivo, pressione <kbd>Ctrl + W</kbd> . 

Para descer linhas utilize a seta para baixo <kbd>↓</kbd> ou clique com o botão direito do mouse e arraste.

Existem projetos como o [CAL-4018](https://github.com/Folds/english) que adicionam esses elementos.
 <img src="docs/Imagens-Para-o-Readme/cal4018.png">
