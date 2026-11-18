= Classificação da Rodovia
<cap:classificacao>
A classe de projeto determina os limites dos parâmetros geométricos que
serão respeitados nos alinhamentos horizontal e vertical. Segundo o
#cite(<dner1999>, form: "prose"), ela decorre de dois fatores: a posição
da rodovia na hierarquia funcional e o volume de tráfego previsto, a
que se soma o relevo da região, na definição dos valores de cada
parâmetro #cite(<lee2003>).

== Classificação funcional
<sec:class-funcional>
A classificação funcional distingue as rodovias pelo equilíbrio entre
mobilidade e acessibilidade, em três sistemas: arterial, coletor e
local #cite(<lee2003>). A ligação em estudo une a DF-001 (EPC), via de
articulação regional, à malha urbana de São Sebastião
#cite(<amorim2026>), região administrativa com 99.050 habitantes urbanos
(PDAD-A 2024) e população total estimada em 129.438 habitantes para
2026. Com esse porte, a via serve a uma cidade com população superior a
50.000 habitantes, parâmetro de referência do sistema arterial primário
#cite(<lee2003>). Por conectar a cidade a uma via estruturante, a
classificação funcional adotada é a de arterial primário, para o qual o
DNER recomenda a classe I
#cite(<dner1999>, supplement: [apud #cite(<lee2003>, form: "prose")]).
A subdivisão da classe I depende do tráfego previsto.

== Estimativa do volume de tráfego
<sec:vmd>
A @tab:classes reproduz os critérios de classificação técnica para
rodovias novas da classe I, nos quais o volume é bidirecional, de
tráfego misto, previsto para o fim dos 20 primeiros anos de operação.

#figure(
  table(
    columns: (auto, auto, 1fr),
    align: (center, center, left),
    inset: 6pt,
    [#strong[Classe]], [#strong[Pista]], [#strong[Critério de classificação técnica]],
    [I-A], [Dupla], [Pista simples resultaria em nível de serviço inferior ao aceitável],
    [I-B], [Simples], [Volume projetado superior a 200 vph ou 1.400 vpd],
  ),
  caption: [Subclasses da classe I para rodovias novas em área rural.
    Fonte: #cite(<dner1999>, form: "prose") apud
    #cite(<lee2003>, form: "prose").],
  kind: table,
) <tab:classes>

Como não há contagem de tráfego para a ligação proposta (que ainda não
existe), o volume médio diário (VMD) foi estimado a partir de duas
fontes complementares.

=== Demanda atual: matriz origem-destino
<sec:demanda-od>
A matriz origem-destino elaborada na disciplina de Planejamento de
Transportes, expandida para viagens diárias, fornece os deslocamentos
com destino a São Sebastião por motivo de trabalho e saúde
(@tab:od) #cite(<matrizod2026>).

#figure(
  table(
    columns: 5,
    align: (left, left, center, center, center),
    inset: 6pt,
    [#strong[RA de residência]], [#strong[Motivo]], [#strong[Viagens/dia]],
    [#strong[Registros]], [#strong[Tempo médio (min)]],
    [Plano Piloto], [Emprego/Trabalho], [421], [9], [45,85],
    [Samambaia], [Emprego/Trabalho], [156], [3], [91,24],
    [Recanto das Emas], [Emprego/Trabalho], [98], [2], [114,51],
    [Taguatinga], [Emprego/Trabalho], [54], [1], [50,00],
    [Plano Piloto], [Saúde], [36], [1], [30,00],
    table.cell(colspan: 2)[#strong[Total]], [#strong[764]], [16], [-],
  ),
  caption: [Viagens diárias com destino a São Sebastião.
    Fonte: #cite(<matrizod2026>, form: "prose").],
  kind: table,
) <tab:od>

As origens (Plano Piloto, Samambaia, Recanto das Emas e Taguatinga)
situam-se a oeste e noroeste de São Sebastião e, para chegar a ela,
passam pelo acesso que a nova ligação pretende complementar. Admitindo
que cada viagem corresponda a um veículo e que haja retorno diário, o
fluxo bidirecional atual é de
$2 times 764 = 1.528$ veículos por dia. Esse valor é um limite inferior:
considera apenas cinco origens e dois motivos de viagem, e exclui
estudo, lazer, comércio, carga e o tráfego de passagem na EPC.

O volume atual já supera o limite de 1.400 vpd da classe I-B
(@tab:classes). Como a norma considera o volume ao fim de vinte anos de
operação, qualquer crescimento do tráfego apenas reforça o
enquadramento.

=== Verificação pela ordem de grandeza do corredor
<sec:corredor>
O viaduto do Jardim Botânico, inaugurado em 2024 no antigo balão da
Esaf, no acesso a São Sebastião, beneficia cerca de 50 mil
motoristas por dia #cite(<jornaldebrasilia2025>). Antes da obra, a
velocidade média no pico da manhã chegava a 10,7 km/h, o que indica um
corredor saturado. Para que a nova ligação alcance o limite de
1.400 vpd da classe I-B, bastaria captar 2,8% desse fluxo, e o volume
estimado (1.528 vpd) equivale a cerca de 3,1% dele. Como o valor se
refere a motoristas, e não a veículos, trata-se apenas de verificação
de ordem de grandeza, que não contradiz a estimativa anterior.

== Enquadramento na classe I-B
<sec:enquadramento>
O enquadramento segue os critérios recomendados pelo DNER
#cite(<lee2003>): (a) hierarquia funcional, (b) volumes previstos,
(c) nível de serviço e (d) fatores econômicos e regionais.

- *Função:* sistema arterial primário, que corresponde à classe I
  (@sec:class-funcional).
- *Volume:* estimativa de, no mínimo, 1.528 vpd, superior ao limite de
  1.400 vpd da classe I-B (@sec:vmd).
- *Pista:* a classe I-A (pista dupla, com controle parcial de acessos)
  só se justifica quando a pista simples resultar em nível de serviço
  inferior ao aceitável. Com esse volume, esse cenário ainda não é esperado, e
  a pista simples da classe I-B deve ser suficiente. O nível de serviço
  deve ser confirmado em estudo de capacidade, o que não faz parte desta
  etapa.

Conclui-se que a ligação deve ser projetada como *rodovia Classe I-B,
em pista simples e relevo plano* (@sec:diretriz). A norma, porém,
estabelece apenas limites, e o projetista pode adotar valores menos
restritivos quando justificados técnica e economicamente
#cite(<lee2003>).

== Parâmetros de projeto da Classe I-B em relevo plano
<sec:parametros>
A @tab:parametros reúne os parâmetros que orientam os capítulos
seguintes, extraídos da Tabela 2.3 de #cite(<lee2003>, form: "prose")
(DNER, 1999, p. 161-168) para a classe I em relevo plano, e das recomendações de traçado em planta e
perfil #cite(<andrade2026>).

#figure(
  table(
    columns: (1fr, auto, auto),
    align: (left, center, center),
    inset: 6pt,
    [#strong[Parâmetro]], [#strong[Unidade]], [#strong[Valor]],
    table.cell(colspan: 3, fill: luma(235))[#strong[Gerais]],
    [Tipo de pista], [-], [Simples, 2 faixas],
    [Velocidade diretriz], [km/h], [100],
    [Distância de visibilidade de parada (desejável / absoluta)], [m], [210 / 155],
    [Distância de visibilidade de ultrapassagem], [m], [680],
    table.cell(colspan: 3, fill: luma(235))[#strong[Alinhamento horizontal]],
    [Raio mínimo de curva horizontal], [m], [345],
    [Superelevação máxima], [%], [10],
    [Raio máximo recomendado], [m], [5.000],
    [Deflexão recomendada entre tangentes], [graus], [10 a 35],
    [Extensão máxima em tangente #footnote[Menor entre 3 km, 2,5 vezes
      o comprimento médio das curvas adjacentes e a distância percorrida
      em 1,5 min na velocidade diretriz: $100 slash 3,6 times 90 =
      2.500$ m.]], [m], [2.500],
    [Tangente mínima entre curvas de mesmo sentido ($4V$)], [m], [400],
    table.cell(colspan: 3, fill: luma(235))[#strong[Alinhamento vertical]],
    [Rampa máxima (absoluta)], [%], [3],
    [Rampa mínima em corte (mínimo absoluto)], [%], [1,0 (0,35)],
    [Parâmetro K, curva convexa (desejável / absoluto)], [m/%], [107 / 58],
    [Parâmetro K, curva côncava (desejável / absoluto)], [m/%], [52 / 36],
    table.cell(colspan: 3, fill: luma(235))[#strong[Seção transversal]],
    [Largura da faixa de trânsito], [m], [3,60],
    [Largura do acostamento externo #footnote[Preferencialmente 3,50 m quando o volume horário unidirecional de caminhões for superior a 250 vph #cite(<dner1999>).]], [m], [3,00],
    [Gabarito vertical], [m], [5,50],
    [Afastamento do bordo do acostamento (contínuo / isolado)], [m], [0,50 / 1,50],
  ),
  caption: [Parâmetros de projeto para rodovia Classe I-B em relevo plano.
    Fonte: #cite(<dner1999>, form: "prose") apud
    #cite(<lee2003>, form: "prose") e #cite(<andrade2026>, form: "prose").],
  kind: table,
) <tab:parametros>

A rampa máxima de 3% e o raio mínimo de
345 m são os limites que mais condicionam o traçado, e o relevo plano
(@tab:relevo) deve permitir atendê-los sem grandes movimentos de terra.
