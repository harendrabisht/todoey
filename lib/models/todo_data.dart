import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TodoData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Todo item 1'),
    Task(title: 'Todo item 2'),
    Task(title: 'Todo item 3'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addNewTask(String newTask) {
    final Task task = Task(title: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }
}
