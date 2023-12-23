type props = {
  todo: Todo.t,
  deleteTodo: Todo.t => unit,
}

let make = props => {
  let isEditing = Voby.Observable.make(false)

  let onToggleEdit = _ => {
    Voby.Observable.update(isEditing, value => !value)
  }

  let onDelete = _ => {
    props.deleteTodo(props.todo)
  }

  Voby.Observable.bind(isEditing, value => {
    switch value {
    | true =>
      <li class="todo-item">
        <input defaultValue={props.todo.title} />
        <button onClick={onToggleEdit}> {Voby.string("cancel")} </button>
      </li>

    | false =>
      <li class="todo-item">
        <span> {Voby.string(props.todo.title)} </span>
        <button onClick={onToggleEdit}> {Voby.string("edit")} </button>
        <button onClick={onDelete}> {Voby.string("delete")} </button>
      </li>
    }
  })
}
