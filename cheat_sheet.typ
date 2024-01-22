// The project function defines how your document looks.
#let project(title: "", authors: (), body) = {
  
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "New Computer Modern", lang: "en")
  show math.equation: set text(weight: 400)
  set page(width: 29.7cm, height: 21cm, margin: (x: 25pt, y:30pt))
  set par(justify: true)

  // Title row.
  align(center)[
    #block(text(weight: 200, 1.5em, title))
    #block(text(weight: 200, 1.0em, ..authors.map(author => align(center, strong(author)))))
  ]
  show: columns.with(5, gutter: 1.3em)
  body
}

