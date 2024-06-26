@react.component
let make = () => {
  let a = Voby.Observable.make(0)
  let b = Voby.Observable.make(0)

  let onInput = observable => e => {
    Voby.Observable.update(observable, _ => JsxEvent.Form.currentTarget(e)["valueAsNumber"])
  }

  let sum = Voby.Observable.map2(a, b, (a, b) => a + b)

  <section>
    <h2> {Voby.JSX.string("Computed values")} </h2>
    <input type_="number" value={Voby.Observable.bind(a, Int.toString)} onInput={onInput(a)} />
    <input type_="number" value={Voby.Observable.bind(b, Int.toString)} onInput={onInput(b)} />
    <div>
      <span> {Voby.Observable.bind(a, Voby.JSX.int)} </span>
      <span> {Voby.JSX.string(" + ")} </span>
      <span> {Voby.Observable.bind(b, Voby.JSX.int)} </span>
      <span> {Voby.JSX.string(" = ")} </span>
      <span> {Voby.Observable.bind(sum, Voby.JSX.int)} </span>
    </div>
    <div>
      <span> {Voby.Observable.bind(a, Voby.JSX.int)} </span>
      <span> {Voby.JSX.string(" * ")} </span>
      <span> {Voby.Observable.bind(b, Voby.JSX.int)} </span>
      <span> {Voby.JSX.string(" = ")} </span>
      <span> {Voby.Observable.bind2(a, b, (a, b) => Voby.JSX.int(a * b))} </span>
    </div>
  </section>
}
