= Cálculo do Azimute do Alinhamento Selecionado
<detalhamento-do-alinhamento-selecionado>
== Cálculo da Correção dos Azimutes
<cálculo-da-correção-dos-azimutes>
Para a determinação da correção dos azimutes, considerou-se a declinação
magnética inicial, a variação anual e a convergência meridiana, conforme
dados disponíveis nas ortografias do Geoportal.

#strong[Dados iniciais:]

- Declinação magnética inicial:
  $D_i eq minus 21^compose 01 prime 24 prime.double$ (em 01/03/2010);

- Variação anual: $v eq minus 5 comma 07 prime$ por ano;

- Convergência meridiana:
  $gamma eq 0^compose 43 prime 32 comma 36 prime.double$;

- Data do projeto: 01/10/2027.

=== Período entre as épocas
<período-entre-as-épocas>
O intervalo de tempo entre as duas datas é:
$ T eq 17 comma 5852 med upright("anos") dot.basic $

=== Variação total da declinação
<variação-total-da-declinação>
A variação acumulada da declinação magnética é:
$ V_(upright("total")) eq v times T eq minus 5 comma 07 prime times 17 comma 5852 approx minus 89 comma 157 prime dot.basic $
Convertendo para graus, minutos e segundos:
$ minus 89 comma 157 prime eq minus 1^compose 29 prime 9 comma 42 prime.double dot.basic $

=== Declinação magnética final
<declinação-magnética-final>
Somando a variação total à declinação inicial, obtém-se:
$ D_f eq D_i plus V_(upright("total")) eq minus 21^compose 01 prime 24 prime.double minus 1^compose 29 prime 9 comma 42 prime.double eq minus 22^compose 30 prime 33 comma 42 prime.double approx minus 22^compose 30 prime 33 prime.double dot.basic $

=== Relação entre Norte Magnético e Norte da Quadrícula
<relação-entre-norte-magnético-e-norte-da-quadrícula>
Para determinar a diferença entre o Norte Magnético e o Norte da
Quadrícula, adiciona-se a convergência meridiana à declinação magnética
final:
$ Delta eq D_f plus gamma eq minus 22^compose 30 prime 33 comma 42 prime.double plus 0^compose 43 prime 32 comma 36 prime.double approx minus 21^compose 47 prime 01 prime.double dot.basic $

=== Correção a aplicar
<correção-a-aplicar>
Portanto, a correção angular a ser aplicada entre o Norte Magnético e o
Norte da Quadrícula, referente à data do projeto (01/10/2027), é:
$ #box(stroke: 0.6pt, inset: 4pt, $minus 21^compose 47 prime 01 prime.double$) dot.basic $

Esse valor deve ser somado (algebricamente) aos azimutes obtidos com
base no Norte da Quadrícula, de modo a convertê-los em azimutes
referidos ao Norte Magnético. Ressalta-se que todos os azimutes
apresentados foram calculados em relação ao Norte da Quadrícula.

#figure([#image("../figuras/13.declinacao.png", width: 85%)],
  caption: [
    Relação entre os nortes e declinações magnéticas.
  ]
)
<fig:declinacao>

== Dados Gerais do Alinhamento
<dados-gerais-do-alinhamento>
Os dados gerais referentes ao alinhamento em estudo encontram-se na
@tab:tab_3.

#figure(
table(
  columns: 9,
  align: (col, row) => (left,center,center,center,center,center,center,center,center,).at(col),
  inset: 6pt,
  [#strong[Ponto]], [#strong[Coord. Absolutas]], [], [#strong[Coord.
  Relativas]], [], [#strong[Comprimento]], [], [#strong[Deflexão]],
  [#strong[Azimute]],
  [1-7],
  [X],
  [Y],
  [Xr],
  [Yr],
  [Calculado],
  [Medido],
  [(G,M,S)],
  [(G,M,S)],
  [#strong[PP]],
  [213966.9],
  [8243813],
  [-],
  [-],
  [-],
  [-],
  [-],
  [159°02’24”],
  [#strong[PI-1]],
  [214289.1],
  [8242972],
  [322.2153],
  [-841.16],
  [900.762],
  [900.762],
  [31°47’43”],
  [127°14’41”],
  [#strong[PI-2]],
  [215304.1],
  [8242200],
  [1015.001],
  [-771.6787],
  [1275.035],
  [1275.035],
  [24°43’53”],
  [151°58’34”],
  [#strong[PI-3]],
  [215798.8],
  [8241271],
  [494.7447],
  [-929.5503],
  [1053.013],
  [1053.013],
  [16°46’49”],
  [168°45’24”],
  [#strong[PF]],
  [216147.9],
  [8239515],
  [349.0293],
  [-1755.771],
  [1790.127],
  [1790.127],
  [-],
  [-],
),
  caption: [Dados gerais do alinhamento B.],
  kind: table,
) <tab:tab_3>

O detalhamento gráfico do alinhamento está apresentado na
@fig:detalhamento_B.

#figure([#image("../figuras/12.detalhamento_tracado.pdf", width: 85%)],
  caption: [
    Detalhamento do traçado B.
  ]
)
<fig:detalhamento_B>
