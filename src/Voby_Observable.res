type t<'a>

@module("voby")
external make: 'a => t<'a> = "$"

let map: (t<'a>, 'a => 'b) => 'b = %raw(`(observable, mapper) => () => mapper(observable())`)
let mapId: t<'a> => 'a = %raw(`observable => () => observable()`)

@module("oby")
external flatMap: (t<array<'a>>, 'a => 'b) => 'b = "for"

let read: t<'a> => 'a = %raw(`observable => observable()`)

let update: (t<'a>, 'a => 'a) => unit = %raw(`(observable, updater) => observable(updater)`)
