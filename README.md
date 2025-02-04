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


project PDF:
[Uploading Projet<!DOCTYPE html>
<!-- saved from url=(0060)https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html -->
<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Begin Jekyll SEO tag v2.8.0 -->
<title>Projeto 1 — Pensamento Indutivo | Lap-2024</title>
<meta name="generator" content="Jekyll v3.9.5">
<meta property="og:title" content="Projeto 1 — Pensamento Indutivo">
<meta property="og:locale" content="en_US">
<link rel="canonical" href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html">
<meta property="og:url" content="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html">
<meta property="og:site_name" content="Lap-2024">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary">
<meta property="twitter:title" content="Projeto 1 — Pensamento Indutivo">
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"WebPage","headline":"Projeto 1 — Pensamento Indutivo","url":"https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html"}</script>
<!-- End Jekyll SEO tag -->

    <style class="anchorjs"></style><link rel="stylesheet" href="./Projeto 1 — Pensamento Indutivo _ Lap-2024_files/style.css">
    <!-- start custom head snippets, customize with your own _includes/head-custom.html file -->

<!-- Setup Google Analytics -->



<!-- You can set your favicon here -->
<!-- link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" -->

<!-- end custom head snippets -->

  </head>
  <body>
    <div class="container-lg px-3 my-5 markdown-body">
      
      <h1><a href="https://lap-2024.github.io/">Lap-2024</a></h1>
      

      <h1 id="projeto-1--pensamento-indutivo">Projeto 1 — Pensamento Indutivo</h1>

<h2 id="informações-práticas">Informações práticas<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#informa%C3%A7%C3%B5es-pr%C3%A1ticas" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h2>

<ul>
  <li>Prazo de entrega: <del>5</del> 8 de Abril de 2024, 23:59.</li>
  <li>Grupo: 2 pessoas, casos excepcionais serão considerados pelos docentes um a um.</li>
  <li>Entrega: Através do GitHub classroom e avaliado com testes unitários (disponíveis em breve).</li>
</ul>

<h2 id="são-triângulos-senhor-são-triângulos">São Triângulos, Senhor, são Triângulos<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#s%C3%A3o-tri%C3%A2ngulos-senhor-s%C3%A3o-tri%C3%A2ngulos" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h2>

<p>O <a href="https://en.wikipedia.org/wiki/Pascal%27s_triangle"><em>Triângulo de Pascal</em></a> é uma representação matricial dos coeficientes
binomiais, com grande utilidade em teoria das probabilidades, combinatória e
álgebra. O seguinte diagrama apresenta as 8 primeiras linhas do triângulo de
Pascal:</p>

<pre><code class="language-verbatim">1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1
1 7 21 35 35 21 7 1
</code></pre>

<p>As linhas e colunas do triângulo são numeradas começando ambas em 0
(zero). Assim, para um triângulo com $n$ linhas e $k$ colunas, o número que se
encontra na última linha e última coluna terá índices $n - 1$ e $k - 1$.</p>

<p>Cada elemento do triângulo pode ser construído de forma recursiva, utilizando
apenas informação da linha anterior. Seja <img src="./Projeto 1 — Pensamento Indutivo _ Lap-2024_files/n_k.jpg" alt="nk"> o elemento da $n$-ésima
linha, $k$-ésima coluna do triângulo. O valor de tal elemento é dado pela
seguinte equação:</p>

<p><img src="./Projeto 1 — Pensamento Indutivo _ Lap-2024_files/function_n_k.png" alt="function"></p>

<h3 id="tarefa">Tarefa<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#tarefa" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h3>

<p>Neste exercício, a sua tarefa é dividida em duas etapas fundamentais:</p>

<ol>
  <li>
    <p>definir uma função recursiva que recebe dois argumentos inteiros, $n$ e
  $k$, e devolve o elemento <img src="./Projeto 1 — Pensamento Indutivo _ Lap-2024_files/n_k.jpg" alt="nk">  do triângulo de Pascal;</p>
  </li>
  <li>
    <p>definir uma função que recebe um argumento inteiro indicando, o número de
  linhas do triângulo a construir e o imprime no <em>standard output</em>.</p>
  </li>
</ol>

<p>Ambas as funções devem ser implementadas em OCaml, com as seguintes assinaturas:</p>

<div class="language-ocaml highlighter-rouge"><div class="highlight"><pre class="highlight"><code>  <span class="k">val</span> <span class="n">n_k_element</span>    <span class="o">:</span> <span class="kt">int</span> <span class="o">-&gt;</span> <span class="kt">int</span> <span class="o">-&gt;</span> <span class="kt">int</span>
  <span class="k">val</span> <span class="n">build_triangle</span> <span class="o">:</span> <span class="kt">int</span> <span class="o">-&gt;</span> <span class="kt">unit</span>
</code></pre></div></div>

<p>Poderá utilizar as funções auxiliares que achar conveniente.</p>

<h3 id="exemplos">Exemplos<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#exemplos" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h3>

<h4 id="triângulo-de-pascal-de-9-linhas">Triângulo de Pascal de 9 linhas<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#tri%C3%A2ngulo-de-pascal-de-9-linhas" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h4>

<pre><code class="language-verbatim">1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1
1 7 21 35 35 21 7 1
1 8 28 56 70 56 28 8 1
</code></pre>

<h4 id="triângulo-de-pascal-de-10-linhas">Triângulo de Pascal de 10 linhas<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#tri%C3%A2ngulo-de-pascal-de-10-linhas" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h4>

<pre><code class="language-verbatim">1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1
1 7 21 35 35 21 7 1
1 8 28 56 70 56 28 8 1
1 9 36 84 126 126 84 36 9 1
</code></pre>

<h2 id="querido-a-indução-mudou-a-casa">Querido, a Indução Mudou a Casa<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#querido-a-indu%C3%A7%C3%A3o-mudou-a-casa" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h2>

<p>A Ana e o Bernardo vão começar obras de remodelação da cozinha. Uma das ideias
que gostariam de implementar é colocar um friso de azulejos ao longo de toda a
parede. Sendo ambos grandes amantes da decoração de interiores, acordaram nas
seguintes regras de estética:</p>

<ol>
  <li>os azulejos do friso só deverão ser de cor vermelha ou preta;</li>
  <li>cada bloco de azulejos vermelhos deve ter pelo menos 3 unidades consecutivas;</li>
  <li>dois blocos de azulejos vermelhos (que podem ser de tamanhos diferentes)
  devem estar separados por pelo menos um azulejo preto.</li>
</ol>

<p>Antes de começarem o trabalho, e conhecendo o comprimento do friso, a Ana e o
Bernardo gostariam de saber quantas formas distintas existem de preencher o
friso, respeitando as regras que estabeleceram.</p>

<p>Tomando como exemplo um friso de tamanho 7, existem as seguintes 17 formas
diferentes de preencher o friso:</p>

<p><img src="./Projeto 1 — Pensamento Indutivo _ Lap-2024_files/rouge_noir.png" alt="Tiles"></p>

<h3 id="tarefa-1">Tarefa<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#tarefa-1" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h3>

<p>Neste exercício a sua tarefa é definir uma função recursiva, matemática, que
modele este problema. Trata-se, portanto, de uma função que recebe como
argumento o tamanho do friso e devolve o número de formas distintas que existem
de o preencher, de acordo com as regras da Ana e do Bernardo. De seguida, deverá
implementar esta função em OCaml. A função OCaml deverá ter a
seguinte assinatura:</p>

<div class="language-ocaml highlighter-rouge"><div class="highlight"><pre class="highlight"><code>  <span class="n">tiles</span> <span class="o">:</span> <span class="kt">int</span> <span class="o">-&gt;</span> <span class="kt">int</span>
</code></pre></div></div>

<p>Poderá utilizar as funções auxiliares que achar conveniente.</p>

<h3 id="exemplos-1">Exemplos<a class="anchorjs-link " href="https://lap-2024.github.io/trabalhos/trab1/lap_handout1.html#exemplos-1" aria-label="Anchor" data-anchorjs-icon="" style="font: 1em / 1 anchorjs-icons; padding-left: 0.375em;"></a></h3>

<ol>
  <li>Um friso de tamanho 8 pode ser preenchido de 27 formas distintas.</li>
  <li>Um friso de tamanho 10 pode ser preenchido de 72 formas distintas.</li>
  <li>Um friso de tamanho 15 pode ser preenchido de 798 formas distintas.</li>
  <li>Um friso de tamanho 20 pode ser preenchido de 8855 formas distintas.</li>
</ol>

      
    </div>
    <script src="./Projeto 1 — Pensamento Indutivo _ Lap-2024_files/anchor.min.js.transferir" integrity="sha256-lZaRhKri35AyJSypXXs4o6OPFTbTmUoltBbDCbdzegg=" crossorigin="anonymous"></script>
    <script>anchors.add();</script>
  

</body></html>o 1 — Pensamento Indutivo _ Lap-2024.html…]()

