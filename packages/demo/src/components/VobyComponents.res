@jsx.component
let make = () => {
  let bool = Voby.Observable.make(true)
  let list = Voby.Observable.make([])

  let toggle = () => Voby.Observable.update(bool)(b => !b)

  let addItem = () => Voby.Observable.update(list)(l => [...l, Date.make()->Date.toISOString])

  <section>
    <h2> {Voby.JSX.string("Voby Components")} </h2>

    <Voby.Components.If observable=bool fallback={Jsx.string("no")}>
      {Jsx.string("yes")}
    </Voby.Components.If>

    <ul>
      <Voby.Components.For observable=list fallback={Jsx.string("empty")}>
        {(item, i) => <li key={Int.toString(i)}> {Jsx.string(item)} </li>}
      </Voby.Components.For>
    </ul>

    <button onClick={_ => toggle()}> {Jsx.string("toggle")} </button>
    <button onClick={_ => addItem()}> {Jsx.string("add item")} </button>
  </section>
}
