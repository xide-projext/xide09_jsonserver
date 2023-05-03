import 'package:flutter/material.dart';
import 'TodoAddScreen.dart';
import 'TodoService.dart';
import 'Todo.dart';

class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: TodoService.getTodos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final todos = snapshot.data!;
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(todo.title),
                  trailing: Checkbox(
                    value: todo.completed,
                    onChanged: (value) {
                      // TODO : update todo
                      print('update');
                      TodoService.updateTodo(
                        Todo(
                          id: todo.id,
                          title: todo.title,
                          completed: value!,
                        ),
                      );
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('add');
          // move to page add TodoAddscreen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TodoAddScreen()),
          );
        },
      ),
    );
  }
}
