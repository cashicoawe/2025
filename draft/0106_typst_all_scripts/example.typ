https://sitandr.github.io/typst-examples-book/book/snippets/math/scripts.html
// author: emilyyyylime

$f_a, f_b, f^a, f_italic("word")$
#show math.attach: it => {
  import math: *
  if it.b != none and it.b.func() != upright[].func() and it.b.has("text") and it.b.text.len() == 1 {
    let args = it.fields()
    let _ = args.remove("base")
    let _ = args.remove("b")
    attach(it.base, b: upright(it.b), ..args)
  } else {
    it
  }
}

$f_a, f_b, f^a, f_italic("word")$