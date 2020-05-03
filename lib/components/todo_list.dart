import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/components/todo.dart';
import 'package:todoapp/models/todo_data.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoData>(
      builder: (context, todoData, child) {
        return ListView.builder(
          itemBuilder: (context, index) => Todo(
            title: todoData.tasks[index].title,
            isChecked: todoData.tasks[index].isChecked,
            handleCheckbox: (isChecked) {
              todoData.toggleTask(todoData.tasks[index]);
            },
          ),
          itemCount: todoData.taskCount,
        );
      },
    );
  }
}
