


List todolist=[];
delete(int a){
  todolist.removeAt(a);
}
addTodo(Map b){
  todolist.add(b);
}
updatetodo(Map updatedtodo,int index){
  todolist[index]=updatedtodo;
  print(todolist);
}

