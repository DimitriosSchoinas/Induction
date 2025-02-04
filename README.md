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
