type t<'a>

@module("voby")
external make: 'a => t<'a> = "$"

let map: (t<'o1>, 'o1 => 'r) => t<'r> = {
  %raw(`(observable, mapper) => () => mapper(observable())`)
}

let map2: (t<'o1>, t<'o2>, ('o1, 'o2) => 'r) => t<'r> = {
  %raw(`(o1, o2, mapper) => () => mapper(o1(), o2())`)
}

let map3: (t<'o1>, t<'o2>, t<'o3>, ('o1, 'o2, 'o3) => 'r) => t<'r> = {
  %raw(`(o1, o2, o3, mapper) => () => mapper(o1(), o2(), o3())`)
}

let bind: (t<'o1>, 'o1 => 'r) => 'r = {
  %raw(`(observable, mapper) => () => mapper(observable())`)
}

let bind2: (t<'o1>, t<'o2>, ('o1, 'o2) => 'r) => 'r = {
  %raw(`(o1, o2, mapper) => () => mapper(o1(), o2())`)
}

let bind3: (t<'o1>, t<'o2>, t<'o3>, ('o1, 'o2, 'o3) => 'r) => 'r = {
  %raw(`(o1, o2, o3, mapper) => () => mapper(o1(), o2(), o3())`)
}

let bindId: t<'a> => 'a = {
  %raw(`observable => () => observable()`)
}

let getValue: t<'a> => 'a = {
  %raw(`observable => observable()`)
}

let update: (t<'a>, 'a => 'a) => unit = {
  %raw(`(observable, updater) => observable(updater)`)
}

module Array = {
  @module("oby")
  external bind: (t<array<'a>>, 'a => 'b) => 'b = "for"
}
