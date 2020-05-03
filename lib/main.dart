import 'package:flutter/material.dart';
import 'package:todoapp/screens/todo_tasks.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoTasks(),
    );
  }
}
