#let interview(title: "", lang: "en", authors: (), body) = {
  set document(title: title, author: authors.map(a => a.name))
  set text(font: "Candara", lang: lang, size: 0.75em)

  set heading(numbering: "1.1")
  show heading: it => [
    #set text(size: 0.8em)
    #it.body #counter(heading).display(it.numbering)
    #v(0.5em)
  ]

  align(center)[
    #text(weight: 700, 3.5em, title)
    #v(1.2em, weak: true)
    #text(1.2em, "252-3110-00L Human Computer Interaction HS2024")
    #v(1em, weak: true)
    #datetime.today().display("[day].[month].[year]")
    #v(2em, weak: true)
    #grid(
      columns: 3,
      gutter: 2em,
      ..authors.map(author => align(center)[
        #set text(0.8em)
        *#author.name* \
        #author.email
      ]),
    )
    #v(3em, weak: true)
  ]

  set par(justify: true)
  set text(hyphenate: false)

  body
}

#let question(main: [], sub: none) = {
  block(
    width: 100%,
    fill: luma(224),
    inset: 0em,
    radius: 0.5em,
    breakable: false,
    spacing: 0em,
    below: 1em,
    [
      #block(
        width: 100%,
        fill: rgb(188, 205, 227),
        inset: 1em,
        radius: 0.5em,
        below: 0em,
        [
          #heading("Question") #main
        ]
      )

      #if sub != none {
        block(
          inset: 1em,
          sub
        )
      }
    ]
  )
}
