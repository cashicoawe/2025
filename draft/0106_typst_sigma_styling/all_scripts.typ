#math.equation([Q = #math.attach(math.sum, b:"b1", bl: "bl1", br: "br1", t: "t1", tl: "tl1", tr: "tr1")])

#math.equation([Q = #math.attach(math.sum, b:math.equation([i = 0]), tr: "tr2",)])

#show math.attach: it => {
  if it.base == [#math.sum] {
    let args = it.fields()
    let _ = args.remove("base")
    math.attach(math.scripts(it.base), ..args)
    // math.attach(it.base, b:"a")
  }else{
    it
  }
}

$ sum_(i=0)^a $