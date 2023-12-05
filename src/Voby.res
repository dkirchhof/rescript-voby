@module("react")
external render: (Jsx.element, Dom.element) => unit = "render"

// @val @return(nullable)
external querySelector: string => option<Dom.element> = "document.querySelector"

// @val 
external null: Jsx.element = "null"

external float: float => Jsx.element = "%identity"
external int: int => Jsx.element = "%identity"
external string: string => Jsx.element = "%identity"

module Observable = {
  type t<'a>

  @module("react")
  external make: 'a => t<'a> = "$"

  let map: (t<'a>, 'a => 'b) => 'b = %raw(`(observable, mapper) => () => mapper(observable())`)
  let mapId: t<'a> => 'a = %raw(`observable => () => observable()`)

  @module("oby")
  external flatMap: (t<array<'a>>, 'a => 'b) => 'b = "for"

  let read: t<'a> => 'a = %raw(`observable => observable()`)

  let update: (t<'a>, 'a => 'a) => unit = %raw(`(observable, updater) => observable(updater)`)
}

module Hooks = {
  @module("react")
  external useEffect: (unit => unit) => unit = "useEffect"

  @module("react")
  external useEffectWithCleanup: (unit => unit => unit) => unit = "useEffect"
}

module Ref = {
  type t<'a> = {
    mutable current: 'a,
  }

  let make = initialValue => {
    current: initialValue,
  }

  let domRef: t<'a> => JsxDOM.domRef = ref => Obj.magic(element => {
    ref.current = Some(element)
  }) 
}
