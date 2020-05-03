import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TodoData extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: 'Todo item 1'),
    Task(title: 'Todo item 2'),
    Task(title: 'Todo item 3'),
  ];
}
