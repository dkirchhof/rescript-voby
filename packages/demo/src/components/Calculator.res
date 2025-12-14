@react.component
let make = () => {
  let counter1 = Voby.Observable.make(0)
  let counter2 = Voby.Observable.make(0)

  let inc1 = _ => {
    Voby.Observable.update(counter1)(v => v + 1)
  }

  let inc2 = _ => {
    Voby.Observable.update(counter2)(v => v + 1)
  }

  let sum = Voby.Observable.computed(() => {
    let a = Voby.Observable.get(counter1)()
    let b = Voby.Observable.get(counter2)()

    `${Int.toString(a)} + ${Int.toString(b)} = ${Int.toString(a + b)}`
  })

  <section>
    <h2> {Voby.JSX.string("Calculator")} </h2>

    // alternative syntax
    // <div>
    //   <Voby.Bind> {() => Voby.Observable.get(counter1)()->Jsx.int} </Voby.Bind>
    // </div>
    // <div>
    //   <Voby.Bind> {() => Voby.Observable.get(counter2)()->Jsx.int} </Voby.Bind>
    // </div>
    // <div>
    //   <Voby.Bind>
    //     {() => {
    //       let a = Voby.Observable.get(counter1)()
    //       let b = Voby.Observable.get(counter2)()

    //       Jsx.string(`${Int.toString(a)} x ${Int.toString(b)} = ${Int.toString(a * b)}`)
    //     }}
    //   </Voby.Bind>
    // </div>

    <div> {Voby.JSX.bindInt(counter1)} </div>
    <div> {Voby.JSX.bindInt(counter2)} </div>
    <div> {Voby.JSX.bindString(sum)} </div>
    <div>
      {Voby.JSX.bind(() => {
        let a = Voby.Observable.get(counter1)()
        let b = Voby.Observable.get(counter2)()

        Jsx.string(`${Int.toString(a)} x ${Int.toString(b)} = ${Int.toString(a * b)}`)
      })}
    </div>

    <button onClick={inc1}> {Voby.JSX.string("1 +")} </button>
    <button onClick={inc2}> {Voby.JSX.string("2 +")} </button>
  </section>
}
