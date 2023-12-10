type t<'a> = {mutable current: 'a}

let make = initialValue => {
  current: initialValue,
}

let connect: t<'a> => JsxDOM.domRef = ref =>
  Obj.magic(element => {
    ref.current = Some(element)
  })
