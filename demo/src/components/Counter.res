let map: (Voby.Observable.t<'o1>, 'o1 => 'r) => Voby.Observable.t<'r> = Voby.Observable.map

@react.component
let make = () => {
  let counter = Voby.Observable.make(0)

  let inc = _ => {
    Voby.Observable.update(counter, v => v + 1)
  }

  let counter4 = Voby.Observable.map(counter, x => x * 4)

  <section>
    <h2> {Voby.JSX.string("Counter")} </h2>
    <div> {Voby.Observable.bind(counter, Voby.JSX.int)} </div>
    <div> {Voby.Observable.bind(counter, x => Voby.JSX.int(x * 2))} </div>
    <div> {Voby.Observable.bind(counter4, Voby.JSX.int)} </div>
    <div class={Voby.Observable.bind(counter, Int.toString)} />
    <button onClick={inc}> {Voby.JSX.string("+")} </button>
  </section>
}
