#import "unb-templante.typ": *

#show: relatório.with(
    título: "Estudo de Traçado",
    tipo: "TCC",
    programa: none,
    departamento: "Departamento de Engenharia Civil",
    faculdade: "Faculdade de Tecnologia",
    autor: [Tarso de Matos Bessa - 222013950],
    orientador: "Prof. Dr. Lourenço Nassib Chehab",
    data: datetime(day:15, month:11, year:2026),
    bibliografia: "referências.bib",
    estilo: "abnt.csl",
    folha-de-rosto: false,
    lista-de-figuras: true,
    lista-de-tabelas: true,
)

#include "conteúdo/cap1.typ"
#include "conteúdo/cap2.typ"
#include "conteúdo/cap3.typ"
#include "conteúdo/cap4.typ"
#include "conteúdo/cap5.typ"
#include "conteúdo/cap6.typ"

#show: adendos
#include "conteúdo/apendice-a.typ"
