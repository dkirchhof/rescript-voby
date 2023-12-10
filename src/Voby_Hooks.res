@module("voby")
external useEffect: (unit => unit) => unit = "useEffect"

@module("voby")
external useEffectWithCleanup: (unit => unit => unit) => unit = "useEffect"
