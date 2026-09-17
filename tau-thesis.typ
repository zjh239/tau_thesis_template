// tau-thesis.typ
#let m_paper = "iso-b5"
#let paper_counter = counter("paper")
// 1. Define the template function. 
#let tau-thesis(
  title: none,
  author: none,
  date: datetime.today(),
  body,
) = {
  // --- Global Settings (No '#' needed here!) ---
  set page(paper: "iso-b5", 
          margin: (top: 2cm, bottom: 3cm, inside: 2.5cm, outside: 2cm),
    
    footer: context{ 
      // text()[#h(1fr) #counter(page).display() #h(1fr)]
    },
    numbering: "1",
  )
  set terms(indent: 1em, separator: h(1cm, weak: true) )
  set text(lang: "en", size: 10pt, font: "Noto Sans")
  
  // line spacing
  set par(leading: 0.7em, justify: true) 
  
  // math settings
  set math.equation(numbering: n => {
    let sn = counter(heading).get().first()
      [#sn.#n]
    })
  
  set heading(numbering: "1.1   ")
  
  // chapter
  show heading.where(level: 1): it => {
    pagebreak(weak: true, to: "odd")
    text(size: 1.8em, weight: "regular", stretch: 75%, it)
    v(6.0em)
  }
  // section
  show heading.where(level: 2): it => {
    v(1.2em)
    text(size: 1.5em, weight: "regular", stretch: 75%, it)
    v(1em)
  }
  // subsection
  show heading.where(level: 3): it => {
    v(1.2em)
    text(size: 1.3em, weight: "regular", stretch: 75%, it)
    v(1.0em)
  }
  // paragraph
  show heading.where(level: 4): it => {
    v(1.2em)
    text(size: 1.1em, weight: "regular", stretch: 75%, it)
    v(1.0em)
  }
  // figure and table
  set figure(numbering: n => {
    let sn = counter(heading).get().first()
      [#sn.#n]
    })
  
  show figure.where(
    kind: table
  ): set figure.caption(position: top)

  show figure.caption: it => {
    text(stretch: 75%, size: .9em, it)}

  set figure(
    placement: auto
  )
 
  let frame() = (x, y) => (
  left: none,
  right: none,
  bottom: .7pt,
  top: if y < 2 { .7pt } else { 0pt },
  )
  
  set table(
    inset: 3pt,
    align: center, 
    stroke: frame(),
  )
  // outline format
  show outline.entry: it => {
    v(0.2em)
    it
  }
  show outline.entry.where(level: 1): it => {
    v(0.8em)
    text(weight: "semibold", it)
  }
  body
}

// article include
#let tab_page(dy, i) = {
  pagebreak(to: "odd", weak: true)
  page(
    margin: 0pt,
    header: none,
    footer: none,
    numbering: none,
    )[#let label = numbering("I", i)
      #place(right + top, dy: dy, block(
        width: 6%,
        height: 20%,
        fill: gray,
        inset: 0pt, align(center + horizon)[
          #text(fill: white, size: 2em, weight: "bold")[#label]]
      ))]
}

#let includepdf(file, pages) = {
    pagebreak(to: "odd", weak: true)
    for p in range(1, pages + 1) {
      page(
        paper: m_paper,  // paper size reset to thesis paper size
        margin: 0pt,
        header: none, footer: none, background: none, numbering: none,
        image(file, page: p),
      )
    }
}

#let include_paper(paper_list) = {
  set page(numbering: none, header: none, footer: none)
  let total = paper_list.len()
  let step = 80%/(total - 1)
  for (i, pub) in paper_list.enumerate(){
    tab_page(i*step, i + 1)
    includepdf(pub.at(0), pub.at(1))
  }
}