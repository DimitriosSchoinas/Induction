[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/U5y0mL-Z)
# LAP 2023-2024 -- Primeiro Trabalho

## Instruções de submissão

Dentro da pasta `lib` encontrará os seguintes três ficheiros:

  - `pascal.ml`
  - `tiles.ml`
  - `dune`

Deverá **apenas alterar os dois primeiros**. O ficheiro `pascal.ml` deverá
conter a sua solução ao primeiro exercício; o ficheiro `tiles.ml` deverá conter
a sua solução ao segundo exercício do trabalho.

Realizar um *commit* significa realizar uma nova entrega do trabalho. Assim,
apenas o último *commit* será considerado como a entrega de versão final do seu
trabalho.

### Primeiro exercício

No ficheiro `pascal.ml` encontrará a declaração de duas funções, `n_k_element` e
`build_triangle`. Estas funções correspondem às funções pedidas no enunciado do
trabalho e por isso deve respeitar o tipo de cada uma, consoante o indicado no
enunciado. O corpo de cada uma destas funções apresenta apenas a expressão

```ocaml
  assert false (* COMPLETAR AQUI *)
```

Deverá apagar esta expressão e substituir pela sua resolução. Mais uma vez
alertamos que poderá utilizar *todas* as funções auxiliares que achar
conveniente.

### Segundo exercício

No ficheiro `tiles.ml` encontrará a declaração de uma função, `tiles`. Tal como
no exercício anterior, esta função corresponde à função pedida no enunciado do
trabalho e por isso deve respeitar o seu tipo . O corpo desta função apresenta
apenas a expressão

```ocaml
  assert false (* COMPLETAR AQUI *)
```

Deverá apagar esta expressão e substituir pela sua resolução. Mais uma vez
alertamos que poderá utilizar *todas* as funções auxiliares que achar
conveniente.

## Testes

Para executar a bateria de testes definida pela equipa docente deverá, na raiz
do projeto e num terminal, executar o seguinte comando:

```console
  dune runtest
```

Se todos os testes forem bem sucedidos, deverá obter a seguinte mensagem:

```console
..........
Ran: XXX tests in: YYY seconds.
OK
.........
Ran: AAA tests in: BBB seconds.
OK
```

indicando o número de testes executados para cada exercício, assim como o tempo
total de execução.

## Erros

Se existir pelo menos um teste que não é bem sucedido, então a execução do
comando `dune runtest` irá abortar a sua execução. Os erros que farão este
comando falhar poderão ser tão diversos:

- erros puros de OCaml (*e.g.*, erros de sintaxe, argumentos de função não
  utilizados, erros de tipificação, etc.);
- erro de impressão, *i.e.*, existe uma diferença entre o resultado da sua
  impressão do triângulo de Pascal e o que seria de facto esperado;
- erro num teste OUnit, em que alguma das funções devolve um inteiro diferente
  daquele que é esperado.


project :

Lap-2024
Projeto 1 — Pensamento Indutivo
Informações práticas
Prazo de entrega: 5 8 de Abril de 2024, 23:59.
Grupo: 2 pessoas, casos excepcionais serão considerados pelos docentes um a um.
Entrega: Através do GitHub classroom e avaliado com testes unitários (disponíveis em breve).
São Triângulos, Senhor, são Triângulos
O Triângulo de Pascal é uma representação matricial dos coeficientes binomiais, com grande utilidade em teoria das probabilidades, combinatória e álgebra. O seguinte diagrama apresenta as 8 primeiras linhas do triângulo de Pascal:

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1

1 5 10 10 5 1

1 6 15 20 15 6 1

1 7 21 35 35 21 7 1

As linhas e colunas do triângulo são numeradas começando ambas em 0 (zero). Assim, para um triângulo com $n$ linhas e $k$ colunas, o número que se encontra na última linha e última coluna terá índices $n - 1$ e $k - 1$.

Cada elemento do triângulo pode ser construído de forma recursiva, utilizando apenas informação da linha anterior. Seja nk o elemento da $n$-ésima linha, $k$-ésima coluna do triângulo. O valor de tal elemento é dado pela seguinte equação:

function

Tarefa
Neste exercício, a sua tarefa é dividida em duas etapas fundamentais:

definir uma função recursiva que recebe dois argumentos inteiros, $n$ e $k$, e devolve o elemento nk do triângulo de Pascal;

definir uma função que recebe um argumento inteiro indicando, o número de linhas do triângulo a construir e o imprime no standard output.

Ambas as funções devem ser implementadas em OCaml, com as seguintes assinaturas:

  val n_k_element    : int -> int -> int
  val build_triangle : int -> unit
Poderá utilizar as funções auxiliares que achar conveniente.

Exemplos
Triângulo de Pascal de 9 linhas

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1

1 5 10 10 5 1

1 6 15 20 15 6 1

1 7 21 35 35 21 7 1

1 8 28 56 70 56 28 8 1


Triângulo de Pascal de 10 linhas

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1

1 5 10 10 5 1

1 6 15 20 15 6 1

1 7 21 35 35 21 7 1

1 8 28 56 70 56 28 8 1

1 9 36 84 126 126 84 36 9 1


Querido, a Indução Mudou a Casa
A Ana e o Bernardo vão começar obras de remodelação da cozinha. Uma das ideias que gostariam de implementar é colocar um friso de azulejos ao longo de toda a parede. Sendo ambos grandes amantes da decoração de interiores, acordaram nas seguintes regras de estética:

os azulejos do friso só deverão ser de cor vermelha ou preta;
cada bloco de azulejos vermelhos deve ter pelo menos 3 unidades consecutivas;
dois blocos de azulejos vermelhos (que podem ser de tamanhos diferentes) devem estar separados por pelo menos um azulejo preto.
Antes de começarem o trabalho, e conhecendo o comprimento do friso, a Ana e o Bernardo gostariam de saber quantas formas distintas existem de preencher o friso, respeitando as regras que estabeleceram.

Tomando como exemplo um friso de tamanho 7, existem as seguintes 17 formas diferentes de preencher o friso:

Tiles

Tarefa
Neste exercício a sua tarefa é definir uma função recursiva, matemática, que modele este problema. Trata-se, portanto, de uma função que recebe como argumento o tamanho do friso e devolve o número de formas distintas que existem de o preencher, de acordo com as regras da Ana e do Bernardo. De seguida, deverá implementar esta função em OCaml. A função OCaml deverá ter a seguinte assinatura:

  tiles : int -> int
Poderá utilizar as funções auxiliares que achar conveniente.

Exemplos
Um friso de tamanho 8 pode ser preenchido de 27 formas distintas.
Um friso de tamanho 10 pode ser preenchido de 72 formas distintas.
Um friso de tamanho 15 pode ser preenchido de 798 formas distintas.
Um friso de tamanho 20 pode ser preenchido de 8855 formas distintas.
