= Diretriz e Classificações do Relevo e da Rodovia
<cap:exemplos>
// Marcadores de conteúdo pendente: remover quando os dados estiverem prontos.
#let figura-pendente(descrição) = rect(
  width: 85%, height: 6cm, stroke: (dash: "dashed", paint: gray),
  align(center + horizon, text(fill: gray)[Figura em elaboração: #descrição]),
)
#let pendente(x) = highlight(fill: yellow.lighten(60%))[#x]

Para iniciar o estudo da diretriz, os pontos PP e PF foram lançados no
Autodesk Civil 3D a partir das coordenadas da @tab:pp_pf, no sistema
UTM, Zona 23L, sobre o modelo digital do terreno gerado com as cartas do
Geoportal DF (SICAD) (@fig:PP_PF_CIVIL).

#figure(rotate(-90deg, reflow: true, image("../figuras/PP_PF_CIVIL.pdf", height: 15cm)),
  caption: [
    Pontos PP e PF lançados no Civil 3D sobre a base cartográfica do
    Geoportal DF. Norte representado no canto inferior esquerdo.
  ]
)
<fig:PP_PF_CIVIL>

== Identificação de Pontos Obrigados
<sec:pontos-obrigados>
Com base nas camadas do arquivo DWG do SICAD e em suas ortofotos,
identificaram-se os pontos obrigados da área de estudo, isto é, os locais que o traçado deve atingir (favoráveis) ou evitar
(desfavoráveis) #cite(<lee2003>). A @fig:curvas_nivel, bem como as imagens seguintes, apresentam
esses pontos, com os favoráveis em verde e os desfavoráveis em
vermelho. Eles se dividem em pontos de passagem (PP) e pontos de condição(PC).

=== Pontos de passagem
<sec:pontos-passagem>
Os pontos de passagem são definidos por critérios técnicos, como
condições topográficas, geotécnicas e hidrológicas
#cite(<andrade2026>). Para identificá-los, utilizaram-se os mapas de
curvas de nível (@fig:curvas_nivel) e de elementos hidrográficos
(@fig:hidrografia).

#figure(rotate(-90deg, reflow: true, image("../figuras/mapa_curvas.pdf", height: 15cm)),
  caption: [Curvas de nível da área de estudo.]
)
<fig:curvas_nivel>

#figure(rotate(-90deg, reflow: true, image("../figuras/mapa_agua.pdf", height: 15cm)),
  caption: [Elementos hidrográficos da área de estudo.]
)
<fig:hidrografia>

Seria útil também dispor de mapas que classificassem o solo quanto à
dificuldade de escavação (materiais de 1#super[a], 2#super[a] e
3#super[a] categorias), mas essas informações não estão disponíveis
para a região.

=== Pontos de condição
<sec:pontos-condicao>
Os pontos de condição são definidos por razões sociais, econômicas ou
estratégicas, como a presença de áreas urbanas, instalações
institucionais e áreas de proteção #cite(<andrade2026>). Na área de
estudo, destacam-se o Complexo Penitenciário da Papuda e as ocupações
existentes, que devem ser evitados, e a Rua Perimetral, que garante a
chegada do traçado à malha urbana de São Sebastião
#cite(<amorim2026>). Os pontos identificados estão representados no
mapa de ocupações urbanas da @fig:ocupacoes. A cobertura vegetal da
área, relevante para a identificação de áreas de proteção, é
apresentada na @fig:vegetacao.

#figure(rotate(-90deg, reflow: true, image("../figuras/mapa_ocupação.pdf", height: 15cm)),
  caption: [Ocupações urbanas e pontos obrigados de condição.]
)
<fig:ocupacoes>

#figure(rotate(-90deg, reflow: true, image("../figuras/mapa_verde.pdf", height: 15cm)),
  caption: [Cobertura vegetal da área de estudo.]
)
<fig:vegetacao>

=== Descrição dos pontos
<sec:resumo-pontos>
A @tab:pontos_obrigados reúne os pontos obrigados identificados e a
justificativa de cada um.

#figure(
  table(
    columns: (auto, auto, auto, 1fr),
    align: (center, center, center, left),
    inset: 6pt,
    [#strong[Ponto]], [#strong[Tipo]], [#strong[Situação]],
    [#strong[Justificativa]],
    [PC+1], [Condição], [Favorável],
    [Ponto inicial (PP) no entroncamento EPC (DF-001) × DF-140; permite a interseção com a rede existente, em terreno plano (~1.160 m).],
    [PC+2], [Condição], [Favorável],
    [Ponto final (PF) na Rua Perimetral, ligada à Av. São Sebastião, pela margem N, sem transpor o rio principal.],
    [PP+1], [Passagem], [Favorável],
    [Chapada central (1.100–1.165 m), plana (1–3%), sem drenagens nem ocupações; permite tangentes longas e pouco movimento de terra.],
    [PP+2], [Passagem], [Favorável],
    [Espigão sob a DF-465: único trecho em que a borda da chapada pode ser transposta sem cruzar ravinas.],
    [PP+3], [Passagem], [Favorável],
    [Planalto livre (~1.100 m) entre o presídio e a escarpa; permite cruzar a DF-465 em trecho reto e plano.],
    [PP+4], [Passagem], [Favorável],
    [Trecho N–S do Córrego Borá Manso: travessia quase ortogonal (~78°), vale aberto e mata ciliar estreita; menor obra de arte.],
    [PP+5], [Passagem], [Favorável],
    [Terraço plano (1–2,6%) na margem N do Ribeirão Papuda; liga a travessia ao PF sem nova travessia do rio.],
    [PC-1], [Condição], [Desfavorável],
    [Unidade NO e heliponto do Complexo Penitenciário da Papuda: área de segurança, com afastamento mínimo de 150 m.],
    [PC-2], [Condição], [Desfavorável],
    [Núcleo central (CPP) e unidade S do complexo penitenciário: área de segurança e ocupação institucional.],
    [PC-3], [Condição], [Desfavorável],
    [Malha urbana e loteamentos de São Sebastião: exigiriam desapropriações e gerariam conflitos com o tráfego local.],
    [PP-1], [Passagem], [Desfavorável],
    [Cabeceiras e vales encaixados (> 20%) do Rib. Santo Antônio da Papuda: obras de arte, cortes altos e impacto ambiental.],
    [PP-2], [Passagem], [Desfavorável],
    [Voçoroca ativa: instabilidade geotécnica e risco de avanço da erosão sob cortes e aterros.],
    [PP-3], [Passagem], [Desfavorável],
    [Confluência Borá Manso/Papuda e barramentos: várzea larga, aterros extensos e risco hidráulico.],
  ),
  caption: [Pontos obrigados identificados na área de estudo],
  kind: table,
) <tab:pontos_obrigados>

== Representação da Diretriz
<sec:diretriz>
A partir dos pontos obrigados, definiu-se a diretriz, isto é, a faixa
de terreno entre PP e PF ao longo da qual os traçados serão lançados
(@fig:diretriz).

#figure(rotate(-90deg, reflow: true, image("../figuras/DIRETRIZ.pdf", height: 15cm)),
  caption: [
    Diretriz proposta na cor dourada.
  ]
)
<fig:diretriz>

== Declividade Média da Diretriz
<declividade-da-diretriz>
A declividade média da diretriz foi obtida de duas formas. Na
primeira, manual, traçaram-se retas sobre a diretriz
(@fig:retas_diretriz); para cada uma, mediram-se o comprimento e a
diferença de cota entre suas extremidades, a partir das curvas de nível,
e calculou-se a declividade. A média dos valores foi obtida em planilha
do Excel.

#figure(rotate(-90deg, reflow: true, image("../figuras/linhas_inclinações.pdf", height: 15cm)),
  caption: [
    Linhas utilizadas para determinação manual da declividade média.
  ]
)
<fig:retas_diretriz>

Na segunda, utilizou-se o mapa de declividades da região da diretriz
gerado no Civil 3D (@fig:slope_diretriz), que calcula automaticamente a
declividade média da área.

#figure(rotate(-90deg, reflow: true, image("../figuras/Mapa_declividades.pdf", height: 15cm)),
  caption: [
    Mapa de declividades da diretriz obtido no Civil 3D. (Todos os mapas
    estão orientados de acordo com o norte da quadrícula.)
  ]
)
<fig:slope_diretriz>

Pelo método manual, obteve-se declividade média de 3,72% e,
pelo Civil 3D, de #pendente[xx %]. Não há critérios rígidos para a
classificação do relevo, que é em geral subjetiva #cite(<lee2003>).
Como referência, adotaram-se as inclinações transversais típicas da
@tab:relevo, segundo as quais o relevo da diretriz foi classificado como
plano.

#figure(
  table(
    columns: 2,
    align: center,
    inset: 6pt,
    [#strong[Relevo]], [#strong[Inclinação transversal típica do terreno]],
    [Plano], [5%],
    [Ondulado], [20%],
    [Montanhoso], [70%],
  ),
  caption: [Inclinação transversal do terreno por tipo de relevo, segundo
    as normas para rodovias vicinais do BNDES (1976), apud
    #cite(<lee2003>, form: "prose")],
  kind: table,
) <tab:relevo>

Por ser subjetiva, a classificação considera também a descrição
qualitativa de cada tipo de relevo, sugerida pela AASHTO (1994) e
apresentada por #cite(<lee2003>, form: "prose"):

- *Relevo plano:* as distâncias de visibilidade podem ser bastante
  longas sem maiores dificuldades construtivas ou custos;
- *Relevo ondulado:* as declividades do terreno exigem cortes e aterros
  constantes, com inclinações acentuadas ocasionais que restringem os
  alinhamentos horizontal e vertical;
- *Relevo montanhoso:* há mudanças abruptas de elevação entre o terreno
  e a plataforma, longitudinal e transversalmente, o que exige aterros e
  cortes frequentes nas encostas.
Dessa forma, confirma-se a classificação do relevo da diretriz como plano.
== Classificação Técnica da Rodovia
<classificação-técnica-da-rodovia>
Com o relevo classificado como plano, a classe de projeto da rodovia,
definida a partir da função da via e do volume de tráfego previsto, é
determinada no @cap:classificacao.
