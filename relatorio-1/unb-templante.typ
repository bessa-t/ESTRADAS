// Template Typst que replica o aspecto da classe LaTeX `unbtex` (v1.5.7).
// Medidas e fontes extraídas de `unbtex.cls` e do PDF `unbtex-example.pdf`.
//
// Fontes usadas (pasta `fonts/` do projeto + TeX Gyre Heros do sistema):
//   corpo  : STIX Two Text (mesma família do "Sticks Too Text" do unbtex)
//   sans   : TeX Gyre Heros (escala 0,90, como `\RequirePackage[scale=0.90]{tgheros}`)
//   mono   : Inconsolata
// Compile com:  typst compile --font-path fonts main.typ

#let verde = cmyk(100%, 0%, 100%, 20%) // verdeunb
#let azul = cmyk(100%, 65%, 0%, 35%) // azulunb

#let f-serif = ("Times New Roman", "Tinos")
#let f-sans = f-serif
#let f-mono = "DejaVu Sans Mono"
#let esc-sans = 0.9 // scale=0.90 do tgheros

// Texto em sans-serif (tamanho nominal LaTeX x escala do pacote)
#let sans(tam, corpo, ..args) = text(font: f-sans, size: tam * esc-sans, weight: "bold", ..args, corpo)

// Distância base-a-base do corpo (1,5 de espaçamento do abnTeX2 para 12pt)
#let passo = 17.93pt
// Altura da caixa de linha (ascender+descender) da fonte do corpo
#let leading-corpo = 7.0pt

#let ap-state = state("apendice", false)

// ❱❱❱ Função principal do template
#let relatório(
    lingua: "pt",
    título: "Título",
    subtítulo: auto,
    tipo: auto,
    programa: none,
    departamento: none,
    faculdade: none,
    orientador: none,
    coorientador: none,
    membros-internos: (),
    membros-externos: (),
    autor: none,
    nivel: none,
    ano: none,
    resumo-ing: none,
    resumo-pt: none,
    agradecimentos: none,
    publicação: "G.TD-",
    data: datetime(day:1, month:1, year:2024),
    bibliografia: none,
    estilo: none,
    folha-de-rosto: false,
    lista-de-figuras: false,
    lista-de-tabelas: false,
    corpo,
) = {

    set text(font: f-serif, size: 12pt, lang: "pt", region: "br", hyphenate: true,
        top-edge: "ascender", bottom-edge: "descender")

    // ❱❱❱ Capa (réplica da capa do unbtex: fundo capa.pdf + textos posicionados)
    set page(paper: "a4", margin: 25mm)
    counter(page).update(0)
    {
        let capa-texto(y, corpo) = place(top + center, dy: y - 25mm, float: false, corpo)
        place(top + left, dx: -25mm, dy: -25mm, image("figuras/capa.pdf", width: 210mm, height: 297mm))

        capa-texto(110mm, text(font: f-sans, size: 17.3pt, weight: "bold")[#set par(leading: 1.2em)
            Universidade de Brasília \
            #faculdade \
            #departamento
        ])
        capa-texto(168mm, text(font: f-sans, size: 20.7pt, weight: "bold")[#título])
        capa-texto(201mm, text(size: 16.2pt)[#set par(leading: 0.9em); #autor])
        capa-texto(275mm, text(font: f-sans, size: 12pt, fill: white)[#set par(leading: 1em)
            Brasília \
            #("janeiro,fevereiro,março,abril,maio,junho,julho,agosto,setembro,outubro,novembro,dezembro".split(",").at(data.month() - 1).replace(regex("^."), m => upper(m.text))) de #data.year()
        ])
    }

    // ❱❱❱ Página: margens do abnTeX2 (esq. 3 cm, dir. 2 cm, sup. 3 cm, inf. 2 cm)
    set page(
        margin: (left: 30mm, right: 20mm, top: 30mm, bottom: 20mm),
        header-ascent: 23.5pt,
        header: context {
            let ini = query(<inicio-textual>)
            if ini.len() == 0 or here().page() < ini.first().location().page() { return }
            // Página de abertura de capítulo: só o número; demais: número + filete
            let abre = query(heading.where(level: 1)).any(h => h.location().page() == here().page())
            set text(size: 10pt)
            align(right, counter(page).display())
            if not abre {
                v(-3.5pt)
                line(length: 100%, stroke: 0.4pt)
            }
        },
    )

    set par(justify: true, leading: leading-corpo, spacing: leading-corpo + 1.8pt,
        first-line-indent: (amount: 2.3em, all: true))

    // ❱❱❱ Cores de ligações (hyperref: allcolors=azulunb)
    show link: set text(fill: azul)
    show ref: set text(fill: azul)
    show cite: set text(fill: azul)
    show footnote: set text(fill: azul)

    // ❱❱❱ Títulos de listas (Lista de figuras, Sumário...)
    let titulo-pre(t, abaixo: 42.7pt) = {
        set par(first-line-indent: 0pt)
        align(center, block(below: abaixo, sans(24.88pt, t, fill: verde)))
    }

    // ❱❱❱ Entradas de sumário / listas (estilo tocloft do unbtex)
    show outline.entry: it => {
        let el = it.element
        let eh = el.func() == heading
        let pre = it.prefix()
        let nivel = if eh { it.level } else { 0 }
        // geometria: (recuo, largura do número)
        let ap = eh and pre != none and repr(pre).contains("Apêndice")
        let (recuo, numw) = if not eh {
            if el.kind == table { (0pt, 65pt) } else { (0pt, 57.5pt) }
        } else if nivel == 1 { (0pt, if pre == none { 0pt } else if ap { 76pt } else { 17.5pt }) }
        else if nivel == 2 { (17.5pt, 26.9pt) }
        else if nivel == 3 { (44.4pt, 37.5pt) }
        else { (81.9pt, 48pt) }
        let gap-pontos = if eh { 6.27pt } else { 5.95pt }
        let em-sans = eh and nivel == 1
        let conteudo = {
            set par(justify: false, first-line-indent: 0pt, hanging-indent: recuo + numw,
                leading: leading-corpo, spacing: leading-corpo)
            link(el.location(), {
                set text(fill: black)
                show: it2 => if em-sans { text(font: f-sans, size: 12pt * esc-sans, weight: "bold", it2) } else { it2 }
                h(recuo)
                if numw > 0pt { box(width: numw, pre) }
                it.body()
                box(width: 1fr, inset: (left: 4pt), repeat(text(weight: "regular", font: f-serif, size: 12pt)[.], gap: gap-pontos))
                box(width: 24pt, align(right, text(fill: azul, it.page())))
            })
        }
        block(above: if nivel == 1 { 5pt + leading-corpo } else { leading-corpo }, below: 0pt, conteudo)
    }
    show outline: set block(above: 0pt)

    // ❱❱❱ Pré-textuais: lista de figuras, lista de tabelas e sumário
    {
        if lista-de-figuras {
            titulo-pre("Lista de figuras")
            outline(title: none, target: figure.where(kind: image))
            pagebreak()
        }
        if lista-de-tabelas {
            titulo-pre("Lista de tabelas")
            outline(title: none, target: figure.where(kind: table))
            pagebreak()
        }
        titulo-pre("Sumário", abaixo: 50.4pt)
        outline(title: none, depth: 4)
        pagebreak()
    }
    [#metadata("inicio") <inicio-textual>]

    // ❱❱❱ Títulos (capítulo / seção / subseção...)
    set heading(numbering: "1.1", supplement: "Capítulo")

    show heading: it => {
        set par(first-line-indent: 0pt, justify: false)
        set text(hyphenate: false)
        let num = if it.numbering != none { counter(heading).display(it.numbering) } else { none }
        if it.level == 1 {
            pagebreak(weak: true)
            counter(math.equation).update(0)
            context {
                let cap = counter(heading).get().first() + if ap-state.get() { 100 } else { 0 }
                counter(figure.where(kind: image)).update(cap * 1000)
                counter(figure.where(kind: table)).update(cap * 1000)
                counter(figure.where(kind: raw)).update(cap * 1000)
            }
            block(above: 0pt, below: 44.5pt, sticky: true,
                sans(24.88pt, {
                    if num != none { num; h(12pt) }
                    it.body
                }, fill: verde))
        } else if it.level == 2 {
            block(above: 29.8pt, below: 15pt, sticky: true,
                sans(17.28pt, { num; h(15pt); it.body }, fill: verde))
        } else {
            block(above: 22pt, below: 12pt, sticky: true,
                sans(12pt, { num; h(12pt); it.body }))
        }
    }

    // ❱❱❱ Equações
    set math.equation(supplement: "Eq.", numbering: num =>
        numbering("(1.1)", counter(heading).get().first(), num)
    )

    // ❱❱❱ Figuras e tabelas
    show figure.where(kind: table): set figure(supplement: "Tabela")
    show figure.where(kind: table): set figure.caption(position: top)
    show figure.where(kind: image): set figure(supplement: "Figura")
    set figure.caption(separator: [ -- ])
    show figure.caption: set text(size: 10.95pt)
    show figure.caption: set par(first-line-indent: 0pt, leading: 2.65pt, spacing: 2.65pt)
    show figure: set block(above: 14pt, below: 14pt)
    show figure.where(kind: table): set block(above: 14pt, below: 14pt)
    set figure(gap: 8pt, numbering: num => {
        let cap = calc.quo(num, 1000)
        let n = calc.rem(num, 1000)
        if cap >= 100 { numbering("A.1", cap - 100, n) } else { numbering("1.1", cap, n) }
    })

    // Tabelas: linhas verdes de 0,6 pt (\arrayrulecolor{verdeunb})
    set table(stroke: 0.6pt + verde, inset: (x: 6pt, y: 4pt))
    show table: set text(top-edge: "ascender", bottom-edge: "descender")
    show table: set par(leading: 2.5pt, spacing: 2.5pt, first-line-indent: 0pt, justify: false)

    // Listas (leftmargin=\parindent, itemsep=0)
    set enum(indent: 0pt, body-indent: 1.3em, tight: true, spacing: leading-corpo)
    set list(indent: 0pt, body-indent: 1.4em, tight: true, spacing: leading-corpo)

    // Código
    show raw: set text(font: f-mono, size: 12pt)
    show raw.where(block: true): set text(size: 10pt)

    // Notas de rodapé
    set footnote.entry(separator: line(length: 5cm, stroke: 0.4pt), clearance: 20pt, gap: 2pt)
    show footnote.entry: set text(size: 10pt)

    corpo

    // ❱❱❱ Bibliografia
    if bibliografia != none {
        show bibliography: set par(leading: 2.34pt, first-line-indent: 0pt,
            hanging-indent: 2.2em, spacing: 2.34pt + 1.8pt)
        bibliography(bibliografia, style: estilo, title: "Referências")
    }
}


// ❱❱❱ Função para apêndices e anexos
#let adendos(corpo) = {
    ap-state.update(true)
    counter(heading).update(0)
    set heading(numbering: (..n) => {
        if n.pos().len() == 1 { "Apêndice " + numbering("A", ..n) + " –" } else { numbering("A.1", ..n) }
    }, supplement: "Apêndice")
    corpo
}
