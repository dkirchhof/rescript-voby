@react.component
let make = () => {
  let nextId = ref(1)

  let input = Voby.Observable.make("")
  let todos = Voby.Observable.make([])

  let onInput = e => {
    Voby.Observable.update(input, _ => JsxEvent.Form.currentTarget(e)["value"])
  }

  let addTodo = _ => {
    let newTodo = Todo.make(nextId.contents, input->Voby.Observable.getValue->String.trim)

    nextId := nextId.contents + 1

    Voby.Observable.update(input, _ => "")
    Voby.Observable.update(todos, todos => Todos.add(todos, newTodo))
  }

  let deleteTodo = todo => {
    Voby.Observable.update(todos, todos => Todos.delete(todos, todo))
  }

  let disabledButton = Voby.Observable.map(input, value => String.length(value) === 0)

  <section>
    <h2> {Voby.JSX.string("Todo list")} </h2>
    <div>
      <input value={Voby.Observable.bindId(input)} onInput />
      <button onClick={addTodo} disabled={Voby.Observable.bindId(disabledButton)}>
        {Voby.JSX.string("add")}
      </button>
    </div>
    <ul> {Voby.Observable.Array.bind(todos, todo => <TodoItem todo deleteTodo />)} </ul>
  </section>
}
