# Portugues-Puro

[![Crowdin](https://badges.crowdin.net/portugues-puro/localized.svg)](https://crowdin.com/project/portugues-puro)

<p>
<img src="Imagens-Para-o-Readme/tela.png" alt="Tela do Programa" width="1371" height="769">
 </p>
 


Este Projeto é baseado na [Plain English Programming Language](http://osmosianplainenglishprogramming.blog/).
Os arquivos originais do projeto podem ser obtidos [aqui](http://www.osmosian.com/cal-4700.zip) e na pasta [cal-4700](https://github.com/elenderg/Portugues-Puro/tree/main/recursos/cal-4700%20ingl%C3%AAs).
A documentação original (em inglês) está disponível [aqui](http://www.osmosian.com/instructions.pdf) e na pasta [documentation](https://github.com/elenderg/Portugues-Puro/tree/main/recursos/cal-4700%20ingl%C3%AAs/documentation).


# Estrutura dos Arquivos

O compilador é composto de basicamente 6 arquivos:

 1. The compiler (que contém as funções do compilador)
 2. The desktop (contém as funções de gerenciamento das cores, botões e demais aspectos da interface geral do programa)
 3. The editor (contém as funções relacionadas ao editor de texto integrado da ADI)
 4. The finder (contém as funções do explorador de arquivos)
 5. The noodle (contém as definições necessárias para o funcionamento do compilador)
 6. The writer (contém funções para o editor de manuais da plataforma)


## Funcionamento

A interface pode parecer confusa para alguns no começo. Existem 26 caracteres de A a Z, cada um correspondendo a um menu específico,  
<img src="Imagens-Para-o-Readme/menus.png" Alt="Menu do programa">
- além do botão **＊** que é utilizado para selecionar a paleta de cores. 
 <img src="Imagens-Para-o-Readme/✷.png" Alt="Paleta de cores">


Boa parte dos sub-menus possui uma tecla de atalho que pode ser acessada com _Ctrl_ ou _Alt_ (na maior parte das vezes qualquer uma das teclas funciona).

Ao lado dos botões existe uma barra que exibe informações diversas, dependendo do contexto, por exemplo: 

 - linha e coluna
 <img src="Imagens-Para-o-Readme/linhacoluna.png">
 - texto copiado
 <img src="Imagens-Para-o-Readme/copiado.png">
 - texto colado
 <img src="Imagens-Para-o-Readme/colado.png">
 - quantidade de linhas selecionadas
 <img src="Imagens-Para-o-Readme/quantidadedelinhasselecionadas.png">
 

No momento o programa ainda não possui barra de rolagem nem botões de Maximizar, Minimizar ou Fechar. (Para sair do Programa, pressione _Alt+Q_, para Fechar um arquivo, pressione _Ctrl + W_ . Para descer linhas utilize a seta para baixo ↓ ou clique com o botão direito do mouse e arraste.

Existem projetos como o [CAL-4018](https://github.com/Folds/english) que adicionam esses elementos, porém o foco agora é traduzir a interface e a linguagem para o Português Brasileiro.
 <img src="Imagens-Para-o-Readme/cal4018.png">
