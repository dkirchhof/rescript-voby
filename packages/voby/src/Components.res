@@jsxConfig({module_: "JSX"})

// module Bind = {
//   @jsx.component
//   let make = (~children: unit => Jsx.element): Jsx.element => Obj.magic(children)
// }

module If = {
  type p = {
    @as("when")
    observable: Observable.t<bool>,
    fallback?: Jsx.element,
    children: Jsx.element,
  }

  @module("voby") @jsx.component(: p)
  external make: p => Jsx.element = "If"
}

module For = {
  type p<'a> = {
    @as("values")
    observable: Observable.t<array<'a>>,
    fallback?: Jsx.element,
    children: ('a, int) => Jsx.element,
  }

  @module("voby") @jsx.component(: p<'a>)
  external make: p<'a> => Jsx.element = "For"
}

module Portal = {
  type p = {
    mount: Dom.element,
    children: Jsx.element,
  }

  @module("voby") @jsx.component(: p)
  external make: p => Jsx.element = "Portal"
}
