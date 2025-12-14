type element = Jsx.element

type component<'props> = Jsx.component<'props>

type componentLike<'props, 'return> = Jsx.componentLike<'props, 'return>

type domProps = {
  ...JsxDOM.domProps,
  class?: string,
}

type fragmentProps = {children?: Jsx.element}

external null: Jsx.element = "null"
external float: float => Jsx.element = "%identity"
external int: int => Jsx.element = "%identity"
external string: string => Jsx.element = "%identity"
external array: array<Jsx.element> => Jsx.element = "%identity"
external bind: (unit => Jsx.element) => Jsx.element = "%identity"

external bindFloat: Observable.t<float> => Jsx.element = "%identity"
external bindInt: Observable.t<int> => Jsx.element = "%identity"
external bindString: Observable.t<string> => Jsx.element = "%identity"

@module("voby")
external jsxFragment: Jsx.component<fragmentProps> = "Fragment"

@module("voby")
external jsx: (Jsx.component<'props>, 'props) => Jsx.element = "jsx"

@module("voby")
external jsxs: (Jsx.component<'props>, 'props) => Jsx.element = "jsxs"

module Elements = {
  @module("voby")
  external jsxFragment: Jsx.component<fragmentProps> = "Fragment"

  @module("voby")
  external jsx: (string, domProps) => Jsx.element = "jsx"

  @module("voby")
  external jsxs: (string, domProps) => Jsx.element = "jsxs"

  external someElement: Jsx.element => option<Jsx.element> = "%identity"
}
