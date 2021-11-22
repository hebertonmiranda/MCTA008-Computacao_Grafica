#### Nome: Heberton Miranda Rodrigues da Silva  	
#### R.A.: 21023713
#### Professor: Bruno Augusto Dorta Marques

# Computação Gráfica – Atividade A2

## Enunciado
Desenvolvimento de uma aplicação gráfica com gráficos 3D.
As atividades poderão ser feitas de forma individual ou em dupla e deverão utilizar a biblioteca ABCg (https://github.com/hbatagelo/abcg) que foi desenvolvida para o curso.

## Descrição do jogo
Foi desenvolvido em C++ e utilizando a API do OpenGL o `Rubik's Game`, que é um jogo clássico onde há um cubo com 6 faces com cores diferentes e é necessário rotacionar as linhas e colunas de pequenos cubos afim de que todas as faces do cubo maior estejam com uma única cor.

## Instruções do jogo
 1. Clique com o botão esquerdo do mouse para rotacionar o cubo por inteiro; 
 2. Utilize o *scroll* do mouse para aproximar ou afastar o cubo; 
 3. Até o momento o cubo foi implementado com a cor azul apenas, devendo ser concluído na próxima entrega.

# Descrição técnica
Para a elaboração da atividade foi utilizado a linguagem C++ juntamente com as bibliotecas da própria linguagem e as bibliotecas `ABCg` e `ImGui` (https://github.com/ocornut/imgui). Para a renderização gráfica foi utilizada a API `OpenGL` (https://www.opengl.org/). Foram utilizadas as seguintes técnicas:

 - `main.cpp`– Foi criada uma janela usando a API `OpenGL`, fixando altura e comprimento;

 - `model.hpp`– Classe com os métodos utilizados para renderizar o objeto 3D;

 - `model.cpp`– Classe que configura as opções do modelo 3D a ser renderizado. Nesta atividade foi utilizado o objeto `Robik.obj`;

 - `openglwindow.hpp`– A classe da janela utiliza a biblioteca `ABCg` onde são inicializados o `OpenGL`, a janela em si e os *widgets* da janela. O fundo da janela foi colorido de preto;

 - `openglwindow.cpp`– Foram utilizadas as *features* da biblioteca `ABCg` para inicializar a janela e os *widgets*. Para os *widgets* foi utilizado o `ImGui` para:

	 - Aparição de *widgets* para mostrar *FPS*, um *slider* para determinar a quantidade de triângulos renderizados no cubo e opções de tipos de projeção.

- `trackball.hpp`– Classe com os métodos e atributos das funções de utilização do *mouse*;

- `trackball.cpp`– Configuração das ações ao utilizar o *mouse*;
	
- `assets\Roblik.obj`– Objeto que mapeia os vértices e faces de um cubo mágico, disponível em https://free3d.com/3d-model/rubik-cube-827023.html ;

- `assets\depth.frag`– Aqui são definidas as cores das faces externas do cubo;

- `assets\depth.vert`– Contém a transformação linear que simula a visão do observador além dos vetores de cores das faces dos cubos;