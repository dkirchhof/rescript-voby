@module("voby")
external render: (Jsx.element, Dom.element) => unit = "render"

// @val @return(nullable)
external querySelector: string => option<Dom.element> = "document.querySelector"

// @val
external null: Jsx.element = "null"

external float: float => Jsx.element = "%identity"
external int: int => Jsx.element = "%identity"
external string: string => Jsx.element = "%identity"
external array: array<Jsx.element> => Jsx.element = "%identity"

module Observable = Voby_Observable
module Hooks = Voby_Hooks
module Ref = Voby_Ref
module Globals = Voby_Globals
