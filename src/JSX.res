type popover = | @as("auto") Auto | @as("manual") Manual
type popoverTargetAction = | @as("toggle") Toggle | @as("show") Show | @as("hide") Hide

type domProps = {
  ...JsxDOM.domProps,
  class?: string,
  popover?: popover,
  popoverTargetAction?: popoverTargetAction,
  popoverTarget?: string,
}

type fragmentProps = {children?: Jsx.element}

// @val
external null: Jsx.element = "null"

external float: float => Jsx.element = "%identity"
external int: int => Jsx.element = "%identity"
external string: string => Jsx.element = "%identity"
external array: array<Jsx.element> => Jsx.element = "%identity"

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
