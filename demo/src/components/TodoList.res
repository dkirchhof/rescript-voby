type props = {
  todos: Voby.Observable.t<Todos.t>,
  deleteTodo: Todo.t => unit,
}

let make = props => {
  <ul>
    {Voby.Observable.flatMap(props.todos, todo => <TodoItem todo deleteTodo=props.deleteTodo />)}
  </ul>
}
