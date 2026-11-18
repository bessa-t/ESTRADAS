= Introdução
<cap:introducao>
Os estudos de traçado antecedem o projeto geométrico de uma rodovia e
têm por objetivo delimitar os locais convenientes para sua passagem e
caracterizá-los geometricamente #cite(<lee2003>). Dividem-se em duas
etapas: o reconhecimento, que escolhe, entre as diretrizes possíveis, a
que permite o melhor traçado técnica e economicamente, considerando
relevo, uso do solo, restrições ambientais, hidrografia e pontos
obrigados; e a exploração, que levanta em detalhe a diretriz escolhida
para obter a planta planialtimétrica, hoje geralmente produzida por
modelos digitais do terreno #cite(<andrade2026>). Como o traçado
condiciona o custo, a segurança e o impacto ambiental da obra, essa fase
deve conciliar eficiência técnica, economia e adequação ao terreno.

Este relatório apresenta a primeira etapa do projeto geométrico de um
novo segmento rodoviário no Distrito Federal, entre o Ponto de Partida
(PP) e o Ponto Final (PF) propostos pelo colega Reginaldo Vitorio Alves Amorim
#cite(<amorim2026>). A classe de projeto da rodovia ainda não está
estabelecida e será definida ao longo deste estudo, segundo os critérios
do DNER #cite(<dner1999>). O modelo digital do terreno, também fornecido pelo colega, foi gerado a
partir de quatro cartas do SICAD, fornecidas pelo autor da Proposta A e
reunidas em uma única base na escala 1:10.000, com curvas de nível
espaçadas de 5 m.

Foram estudadas duas alternativas, os Traçados A e B, comparadas quanto
a declividade, extensão, movimentação de terra, adequação ao relevo e
interferências ambientais e de ocupação do solo, a fim de selecionar a
mais adequada para implantação.

== Contexto da região
<sec:contexto>
A Proposta A #cite(<amorim2026>) estuda uma nova conexão entre a DF-001
(Estrada Parque Contorno — EPC), próximo ao entroncamento com a DF-140,
e a Rua Perimetral, ligada à Avenida São Sebastião. O objetivo é ampliar
o acesso à cidade pelo setor oeste/sudoeste, aumentando a redundância da
rede e permitindo redistribuir fluxos. A @fig:pp_pf ilustra os pontos PP
e PF, representados na plataforma Geoportal DF.

#figure([#image("../figuras/pp_pf.png", width: 85%)],
  caption: [
    Localização dos pontos PP e PF no Geoportal DF. A linha indica a
    distância em linha reta entre os pontos, e não o traçado da rodovia.
    Fonte: #cite(<amorim2026>, form: "prose").
  ]
) <fig:pp_pf>

O PP situa-se junto à EPC e o PF na Rua Perimetral, na borda urbana, a
uma distância em linha reta de cerca de 6,86 km. As coordenadas dos dois
pontos são apresentadas na @tab:pp_pf.

#figure(
  table(
    columns: 3,
    align: center,
    inset: 6pt,
    [#strong[Ponto]], [#strong[Coordenada X (m)]], [#strong[Coordenada Y (m)]],
    [#strong[PP]], [196.788,69], [8.236.972,21],
    [#strong[PF]], [203.273,90], [8.239.197,34],
  ),
  caption: [Coordenadas planas dos pontos PP e PF #cite(<amorim2026>)],
  kind: table,
) <tab:pp_pf>

O modelo do terreno e o lançamento dos traçados serão desenvolvidos no
software Autodesk Civil 3D.
