type t<'a>

external get: t<'a> => unit => 'a = "%identity"
external set: t<'a> => 'a => unit = "%identity"
external update: t<'a> => ('a => 'a) => unit = "%identity"

@module("voby")
external make: 'a => t<'a> = "$"

external computed: (() => 'a) => t<'a> = "%identity"

// module Array = {
//   @module("oby")
//   external bind: (t<array<'a>>, 'a => 'b) => 'b = "for"

//   @module("oby")
//   external bindWithIndex: (t<array<'a>>, ('a, unit => int) => 'b) => 'b = "for"
// }
