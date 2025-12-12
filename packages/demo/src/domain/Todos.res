type t = array<Todo.t>

let add = (todos: t, newTodo: Todo.t) => Array.concat(todos, [newTodo])

let delete = (todos: t, del: Todo.t) => Array.filter(todos, todo => todo.id !== del.id)
