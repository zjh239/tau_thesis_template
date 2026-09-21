#let ft(txt) = text(size: 0.8em, style: "italic")[#txt]

#set page(numbering: "i",
  footer: context {
    align(center)[#counter(page).display()]
  },)
#counter(page).update(2)
// This page is the supervisor information
ACADEMIC DISSERTATION\
_Tampere University, Faculty of Engineering and Natural Sciences Finland_#v(1em)
#table(
  columns: (12.5em, 1fr),
  align: (left, left),
  column-gutter: 1em, row-gutter: -.1em,
  stroke: none,
  [_Supervising professor_#v(.2em)],[],
  [#h(1em)Title], [Name],
            [],[#ft[Institute]],
            [],[#ft[Institute]#v(1em)],
  [_Supervisors_#v(.2em)],[],
  [#h(1em)Title], [Name],
            [],[#ft[Institute]],
            [],[#ft[Institute]#v(1em)],

  [_Pre-examiners_#v(.2em)],[],
  [#h(1em)Title], [Name],
            [],[#ft[Institute]#v(1em)],
  [#h(1em)Title], [Name],
            [],[#ft[Institute]#v(1em)],
  [_Opponent_#v(.2em)],[],
  [#h(1em)Title], [Name],
            [],[#ft[Institute]],
            [],[#ft[Institute]#v(1em)],
)
#v(1fr)
The originality of this thesis has been checked using the Turnitin OriginalityCheck service.#v(1.5em)
Copyright ©20?? ?author?#v(1.5em)
Cover design: Roihu Inc.#v(1.5em)
  ISBN ??(printed version) \
  ISSN ?? \
  ISBN ??(pdf version)\
  ISSN ??\
  `https://`#v(1.5em)
  PunaMusta Oy -- Yliopistopaino\
  Vantaa 2020

#pagebreak(weak: true, to: "odd")

#heading(numbering: none, outlined: true, level: 1)[Acknowledgement]
Some people prefer putting this at the end. It is a matter of taste to my opinion.
#pagebreak(weak: true, to: "odd")

#heading(numbering: none, outlined: true, level: 1)[Abstract]
#lorem(30)
#pagebreak(weak: true, to: "odd")

// outline
#heading(numbering: none, outlined: true, level: 1)[Contents]
#outline(title: none, indent: 1.8em, depth: 3)
#pagebreak(weak: true)

// outline of figures and tables
#heading(numbering: none, outlined: false, level: 2)[List of Figures]
#outline(title: none, target: figure.where(kind: image))
#heading(numbering: none, outlined: false, level: 2)[List of Tables]
#outline(title: none, target: figure.where(kind: table))

// outline of symbols and abbreviations
#heading(numbering: none, outlined: true, level: 1)[Symbols and Abbreviations]
#heading(numbering: none, outlined: false, level: 2)[Symbols]
// Define a borderless table with two columns
#table(
  columns: (3em, 1fr),
  align: (right, left),
  column-gutter: 1em,
  row-gutter: .5em,
  stroke: none,

  [$H$], [Hessian matrix],
  [$E_k$], [Kinetic energy],
  [$E_p$], [Potential energy],
  [$E_A$], [Activation energy barrier],
  [$sigma$], [Stress],
  [$epsilon$], [Strain],
  [$omega$], [Vibrational frequency],
)
#heading(numbering: none, outlined: false, level: 2)[Abbreviations]
#{
show table.cell.where(x: 0): set text(weight: "semibold")
table(
  columns: (3em, 1fr),
  align: (right, left),
  column-gutter: 1em,
  row-gutter: .5em,
  stroke: none,

  [PEL], [Potential energy landscape],
  [ART], [Activation-relaxation technique],
)
}
#pagebreak(weak: true, to: "odd")

// publication data
#heading(numbering: none, outlined: true, level: 1)[Original publications]

Publication I
#align(right)[
#box(width: 85%)[#set align(left)
*F. Lastname*, F. Lastname (2024): Title of the paper, _Journal of ??_, 628, 12840. DOI:
]]

Publication I
#align(right)[
#box(width: 85%)[#set align(left)
*F. Lastname*, F. Lastname (2024): Title of the paper, _Journal of ??_, 628, 12840. DOI:
]]

Publication I
#align(right)[
#box(width: 85%)[#set align(left)
*F. Lastname*, F. Lastname (2024): Title of the paper, _Journal of ??_, 628, 12840. DOI:
]]

Publication I
#align(right)[
#box(width: 85%)[#set align(left)
*F. Lastname*, F. Lastname (2024): Title of the paper, _Journal of ??_, 628, 12840. DOI:
]]

// author's contribution
#heading(numbering: none, outlined: true, level: 1)[Author's contribution]

In Publication I, the author has done ...

#pagebreak(weak: true, to: "odd")
