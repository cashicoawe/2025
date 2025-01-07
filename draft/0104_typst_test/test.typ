// カーソルが見づらいので

#set page(fill: rgb("#adadad"))
\#set page(fill: rgb("\#adadad"))

english
日本語
simple line breaks are ignored.

empty line break are applied

= \= heading

_\_italics\__

+ \+ list1
  - \- child1
  - \- child2
+ \+ list2
+ \+ list3

\#image("./ss.png")
#image("./ss.png")

\#image("./ss.png", width: 20%)
#image("./ss.png", width: 20%)

\#figure(
  image("ss.png"),
  caption: "figure1"
)

#figure(
  image("ss.png"),
  caption: "figure1"
)

\@link this is a link

@link this is a link

\#figure(
  image("ss.png"),
  caption: "linked"
)\<link>

#figure(
  image("ss.png"),
  caption: "linked"
)<link>



\#figure(\
  image("ss.png"),\
  caption: [\
    square brackets can include \*markups\*\
  ]\
)
#figure(
  image("ss.png"),
  caption: [
    square brackets can include *markups*
  ]
)

// says, @10.1145/367177.367199
in article \@10.1145

in article @10.1145

#bibliography(
  "bibtex.bib",
  style: "harvard-cite-them-right"
  )

// #bibliography(
//   "bibtex.bib",
//   style: "harvard-cite-them-right"
//   )

// multiple bibliography are not yet supported

no space between \$ and expression become inline expression. example: \$Q = rho a v + C\$

no space between \$ and expression become inline expression. example: $Q = rho a v + C$

center alignment needs single space in start and end. example: \$ Q = rho a v + C \$

center alignment needs single space in start and end. example: $ Q = rho a v + C $

\$ Q = rho a v + "time offset" \$
$ Q = rho a v + "time offset" $