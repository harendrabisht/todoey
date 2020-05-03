import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/components/todo.dart';
import 'package:todoapp/models/todo_data.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Todo(
        title: Provider.of<TodoData>(context).tasks[index].title,
        isChecked: Provider.of<TodoData>(context).tasks[index].isChecked,
        handleCheckbox: (isChecked) {
//          setState(() {
//            widget.tasks[index].toggleTask();
//          });
        },
      ),
      itemCount: Provider.of<TodoData>(context).tasks.length,
    );
  }
}
