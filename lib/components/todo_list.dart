import 'package:flutter/material.dart';
import 'package:todoapp/components/todo.dart';
import 'package:todoapp/models/task.dart';

class TodoList extends StatefulWidget {
  final List<Task> tasks;
  TodoList(this.tasks);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Todo(
        title: widget.tasks[index].title,
        isChecked: widget.tasks[index].isChecked,
        handleCheckbox: (isChecked) {
          setState(() {
            widget.tasks[index].toggleTask();
          });
        },
      ),
      itemCount: widget.tasks.length,
    );
  }
}
