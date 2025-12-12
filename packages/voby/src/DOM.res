@module("voby")
external render: (Jsx.element, Dom.element) => unit = "render"

// @val @return(nullable)
external querySelector: string => option<Dom.element> = "document.querySelector"
