type domProps = {
  ...JsxDOM.domProps,
  class?: string,
}

module ReactDOM = {
  @module("voby")
  external jsx: (string, domProps) => Jsx.element = "jsxs"

  @module("voby")
  external jsxs: (string, domProps) => Jsx.element = "jsxs"

  external someElement: Jsx.element => option<Jsx.element> = "%identity"
}

module React = {
  type fragmentProps = {children?: Jsx.element}

  @module("voby")
  external jsxFragment: Jsx.component<fragmentProps> = "Fragment"

  @module("voby")
  external jsx: (Jsx.component<'props>, 'props) => Jsx.element = "jsx"

  @module("voby")
  external jsxs: (Jsx.component<'props>, 'props) => Jsx.element = "jsxs"

  external null: Jsx.element = "null"

  external float: float => Jsx.element = "%identity"
  external int: int => Jsx.element = "%identity"
  external string: string => Jsx.element = "%identity"
  external array: array<Jsx.element> => Jsx.element = "%identity"
}
