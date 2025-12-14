@react.component
let make = () => {
  let counter = Voby.Observable.make(0)

  let inc = _ => {
    Voby.Observable.update(counter)(v => v + 1)
  }

  <section>
    <h2> {Voby.JSX.string("Counter")} </h2>
    <div> {Voby.JSX.bindInt(counter)} </div>
    <div> {Voby.JSX.bind(() => Voby.JSX.int(Voby.Observable.get(counter)() * 2))} </div>
    <p>
      {Jsx.string(`Even (Ternary):`)}
      {Voby.JSX.bind(() =>
        Voby.Observable.get(counter)() % 2 === 1 ? Jsx.string("no") : Jsx.string("yes")
      )}
    </p>

    <button onClick={inc}> {Voby.JSX.string("+")} </button>
  </section>
}
